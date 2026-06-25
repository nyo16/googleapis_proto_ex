#!/bin/sh
# Script to update Google API protobuf files for Elixir
# Original inspiration from https://github.com/cjab/weddell/blob/master/bin/update-proto

set -e  # Exit on any error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo_info() { echo "${GREEN}[INFO]${NC} $1"; }
echo_warn() { echo "${YELLOW}[WARN]${NC} $1"; }
echo_error() { echo "${RED}[ERROR]${NC} $1"; }

# Fallback protoc version downloaded only when no system `protoc` is found.
# Override with: PROTOC_VERSION=xx.y ./update-protos.sh
PROTOC_VERSION="${PROTOC_VERSION:-33.1}"

DIR="$( cd "$( dirname "$0" )" && pwd )"
TMP_DIR=$DIR/staging_folder
OUT=$DIR/lib
GOOGLEAPIS_PATH=$TMP_DIR/googleapis
PROTOC_PATH=$TMP_DIR/protoc

echo_info "Working directory: $DIR"
echo_info "Staging directory: $TMP_DIR"

# --- Locate the protoc-gen-elixir plugin ---------------------------------
# Resolve the escript, preferring a CONCRETE install over a version-manager
# shim. asdf/rtx shims for `protoc-gen-elixir` fail with "No version is set"
# until `asdf reshim` runs, so we point protoc straight at the real escript.
[ -n "$MIX_HOME" ] || MIX_HOME=$HOME/.mix

find_plugin() {
    # 1. Concrete escript for the active asdf/rtx-managed Elixir.
    if command -v asdf >/dev/null 2>&1; then
        _p="$(asdf where elixir 2>/dev/null)/.mix/escripts/protoc-gen-elixir"
        [ -f "$_p" ] && { echo "$_p"; return 0; }
    fi
    # 2. Standard Mix escripts locations.
    for _p in "$MIX_HOME/escripts/protoc-gen-elixir" "$HOME/.mix/escripts/protoc-gen-elixir"; do
        [ -f "$_p" ] && { echo "$_p"; return 0; }
    done
    # 3. Last resort: whatever is on PATH (may be a shim).
    command -v protoc-gen-elixir 2>/dev/null
}

echo_info "Checking for protoc-gen-elixir plugin..."
PLUGIN_PATH="$(find_plugin)"
if [ -z "$PLUGIN_PATH" ]; then
    echo_info "Installing protoc-gen-elixir plugin via Hex..."
    mix escript.install hex protobuf --force
    command -v asdf >/dev/null 2>&1 && asdf reshim elixir >/dev/null 2>&1 || true
    PLUGIN_PATH="$(find_plugin)"
fi
if [ -z "$PLUGIN_PATH" ] || { [ ! -f "$PLUGIN_PATH" ] && [ ! -x "$PLUGIN_PATH" ]; }; then
    echo_error "Could not locate the protoc-gen-elixir escript."
    exit 1
fi
echo_info "Using protoc-gen-elixir: $PLUGIN_PATH"

# --- Locate / install protoc ---------------------------------------------
# Prefer a system protoc (kept current via brew/apt); fall back to a pinned
# download only when none is available. protoc auto-resolves the well-known
# google/protobuf/*.proto imports from its own bundled include directory.
mkdir -p $TMP_DIR
if command -v protoc >/dev/null 2>&1; then
    PROTOC=protoc
    echo_info "Using system protoc: $(protoc --version)"
else
    PLATFORM=$(uname -s)
    ARCH=$(uname -m)
    case "$PLATFORM" in
        Darwin)
            if [ "$ARCH" = "arm64" ]; then PA=osx-aarch_64; else PA=osx-x86_64; fi ;;
        Linux)
            if [ "$ARCH" = "x86_64" ]; then PA=linux-x86_64; else PA=linux-aarch_64; fi ;;
        *)
            echo_error "Unsupported platform: $PLATFORM"; exit 1 ;;
    esac
    PROTOC_URL="https://github.com/protocolbuffers/protobuf/releases/download/v${PROTOC_VERSION}/protoc-${PROTOC_VERSION}-${PA}.zip"
    PROTOC=$PROTOC_PATH/bin/protoc
    if [ ! -d "$PROTOC_PATH" ]; then
        echo_info "Downloading protoc ${PROTOC_VERSION} ($PA)..."
        if command -v curl >/dev/null 2>&1; then
            curl -L -o $TMP_DIR/protoc.zip "$PROTOC_URL"
        elif command -v wget >/dev/null 2>&1; then
            wget -O $TMP_DIR/protoc.zip "$PROTOC_URL"
        else
            echo_error "Neither curl nor wget found. Please install one of them."; exit 1
        fi
        unzip -q $TMP_DIR/protoc.zip -d $PROTOC_PATH
        rm $TMP_DIR/protoc.zip
        echo_info "Protoc installed at $PROTOC_PATH"
    fi
    echo_info "Using downloaded protoc: $($PROTOC --version)"
fi

# --- Sync googleapis source ----------------------------------------------
echo_info "Setting up googleapis repository..."
if [ ! -d "$GOOGLEAPIS_PATH" ]; then
    echo_info "Cloning googleapis repository (shallow)..."
    git clone --depth 1 https://github.com/googleapis/googleapis.git $GOOGLEAPIS_PATH
else
    echo_info "Updating existing googleapis checkout..."
    (cd $GOOGLEAPIS_PATH && git pull --ff-only)
fi

# --- Reset output ---------------------------------------------------------
echo_info "Cleaning up old generated files..."
rm -rf $OUT
mkdir -p $OUT
echo_info "Output directory prepared: $OUT"

# Generate Elixir + gRPC stubs for every .proto found under the given root(s).
# A single include path (the googleapis root) keeps each file's canonical name
# consistent between command-line and imports, which protoc requires.
gen_tree() {
    $PROTOC -I "$GOOGLEAPIS_PATH" \
        --plugin=protoc-gen-elixir="$PLUGIN_PATH" \
        --elixir_out=plugins=grpc:"$OUT" \
        $(find "$@" -name '*.proto')
}

echo_info "Generating Elixir code from protobuf files..."

# NOTE: We intentionally do NOT generate types that our Hex dependencies
# already ship, because emitting our own copies causes duplicate-module
# collisions in any consuming app:
#
#   * google.protobuf.*  (Timestamp, Duration, Empty, Any, FieldMask, Struct,
#     Wrappers, Descriptor, ...) -> provided by the `protobuf` package.
#   * google.api.* / google.rpc.* / google.type.* / google.longrunning.* /
#     google.bytestream.* / google.geo.* -> provided by the `googleapis`
#     package (pulled in transitively by `grpc` via `grpc_core`).
#
# protoc still resolves all of these as imports (from its bundled include dir
# and the googleapis checkout), so referencing types keep working.

# The `googleapis` package is missing a handful of google.api monitoring types
# that some services (Cloud Logging, BigQuery) reference, so generate just
# those. They do not exist in the dependency, so there is no collision.
echo_info "Generating google/api gap types absent from :googleapis (metric/monitoring)..."
# NOTE: launch_stage.proto is intentionally NOT generated — Google.Api.LaunchStage
# is provided by :googleapis and metric/monitored_resource reference it from there.
gen_tree \
    $GOOGLEAPIS_PATH/google/api/label.proto \
    $GOOGLEAPIS_PATH/google/api/distribution.proto \
    $GOOGLEAPIS_PATH/google/api/metric.proto \
    $GOOGLEAPIS_PATH/google/api/monitored_resource.proto

echo_info "Generating IAM v1 (google/iam/v1)..."
gen_tree $GOOGLEAPIS_PATH/google/iam/v1

echo_info "Generating Cloud Logging (google/logging, all)..."
gen_tree $GOOGLEAPIS_PATH/google/logging

echo_info "Generating Google Datastore (all versions)..."
gen_tree $GOOGLEAPIS_PATH/google/datastore

echo_info "Generating Google Pub/Sub v1 (incl. Schema)..."
gen_tree $GOOGLEAPIS_PATH/google/pubsub/v1

echo_info "Generating Google Storage v1..."
gen_tree $GOOGLEAPIS_PATH/google/storage/v1

echo_info "Generating Google Cloud KMS v1..."
gen_tree $GOOGLEAPIS_PATH/google/cloud/kms/v1

echo_info "Generating Google Cloud Tasks v2..."
gen_tree $GOOGLEAPIS_PATH/google/cloud/tasks/v2

echo_info "Generating Google Cloud Secret Manager (all versions)..."
gen_tree $GOOGLEAPIS_PATH/google/cloud/secretmanager

echo_info "Generating Google Cloud Bigtable (all versions)..."
gen_tree $GOOGLEAPIS_PATH/google/bigtable

echo_info "Generating Google AI Generative Language (all versions)..."
gen_tree $GOOGLEAPIS_PATH/google/ai/generativelanguage

echo_info "Generating Google Cloud BigQuery (all versions, incl. Storage v1)..."
gen_tree $GOOGLEAPIS_PATH/google/cloud/bigquery

# --- Flatten duplicated package directories -------------------------------
# protobuf >= 0.16 names each output file "<package_path>/<proto_file_path>",
# and in the googleapis tree the proto file path already starts with the
# package path, so the leading package segment is duplicated on disk
# (lib/google/rpc/google/rpc/code.pb.ex). The generated module names are
# correct regardless; this just restores the clean single-level layout
# (lib/google/rpc/code.pb.ex). A file's output dir is exactly "<P>/<P>", so we
# collapse any directory whose two halves are identical.
echo_info "Flattening duplicated package directories..."
OLDIFS=$IFS
IFS='
'
for f in $(find "$OUT" -name '*.pb.ex' -type f); do
    rel=${f#"$OUT"/}
    d=$(dirname "$rel")
    [ "$d" = "." ] && continue
    n=$(printf '%s' "$d" | awk -F/ '{print NF}')
    [ $((n % 2)) -eq 0 ] || continue
    half=$((n / 2))
    first=$(printf '%s' "$d" | cut -d/ -f1-"$half")
    second=$(printf '%s' "$d" | cut -d/ -f"$((half + 1))"-"$n")
    [ "$first" = "$second" ] || continue
    mkdir -p "$OUT/$first"
    mv "$f" "$OUT/$first/$(basename "$rel")"
done
IFS=$OLDIFS
# Drop the now-empty duplicated subtrees.
find "$OUT" -type d -empty -delete

# --- Defensive cleanup ----------------------------------------------------
# Belt-and-suspenders: ensure no google.protobuf.* well-known types ever ship
# from this package, even if a future proto graph drags one in.
echo_info "Removing any generated google.protobuf well-known types (provided by :protobuf)..."
rm -rf $OUT/google/protobuf $OUT/protobuf

echo_info "Protobuf generation completed successfully!"
echo_info "Generated files are in: $OUT"
