# GoogleapisProtoEx

**Google API protocol buffer definitions for Elixir - including Datastore, Bigtable, Pub/Sub, Storage, KMS, Tasks, Secret Manager, and AI Generative Language APIs.**

This package provides pre-compiled Elixir modules from Google's Protocol Buffer definitions, allowing you to easily interact with Google Cloud services using gRPC in your Elixir applications.

## Included APIs

- **Google Cloud Datastore** (v1, admin v1) - NoSQL document database
- **Google Cloud Bigtable** (v2, admin v2) - Wide-column NoSQL database
- **Google Cloud Pub/Sub** (v1) - Messaging service
- **Google Cloud Storage** (v1) - Object storage
- **Google Cloud KMS** (v1) - Key management service  
- **Google Cloud Tasks** (v2) - Task queue service
- **Google Cloud Secret Manager** (v1, v1beta2) - Secret storage
- **Google Cloud BigQuery** (incl. Storage v1 read/write API) - Data warehouse
- **Google AI Generative Language** (v1, v1alpha, v1beta, v1beta2, v1beta3) - AI/ML APIs
- **Google IAM** (v1) - Policy / `SetIamPolicy` / `GetIamPolicy` types used by the service IAM RPCs
- **Google Long-Running Operations** (`google.longrunning`) - `Operation` types for admin/LRO APIs
- **Google Cloud Logging** (v2) - Log entry and logging service types

### Shared modules inherited from dependencies

To avoid duplicate-module collisions in your application, this package does **not**
generate the common Google types that its dependencies already ship — it reuses them:

- `Google.Protobuf.*` (Timestamp, Duration, Empty, Any, FieldMask, Struct, Wrappers, …)
  come from the [`protobuf`](https://hex.pm/packages/protobuf) package.
- `Google.Api.*`, `Google.Rpc.*`, `Google.Type.*`, `Google.Longrunning.*`,
  `Google.Bytestream.*`, `Google.Geo.*` come from the
  [`googleapis`](https://hex.pm/packages/googleapis) package (pulled in transitively by
  `grpc`). The only exception is a handful of `google.api` monitoring types
  (`MetricDescriptor`, `MonitoredResource`, `Distribution`, `LabelDescriptor`) that the
  `googleapis` package omits but Cloud Logging/BigQuery reference — those are generated here.

## Installation

Add `googleapis_proto_ex` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:googleapis_proto_ex, "~> 0.4"},
    {:grpc, "~> 1.0"}
  ]
end
```

## Usage

After installation, you can use the generated modules in your application:

```elixir
# Example: Working with Pub/Sub
alias Google.Pubsub.V1.{PublisherClient, PubsubMessage}

# Example: Working with Datastore  
alias Google.Datastore.V1.{DatastoreClient, Entity, Key}

# Example: Working with Cloud Storage
alias Google.Storage.V1.StorageClient
```

## Development Setup

If you want to update the protobuf files or contribute to this project, you'll need to set up the development environment.

### Prerequisites

1. **Elixir** (>= 1.15)
2. **Mix** 
3. **Git**
4. **protoc** (Protocol Buffer Compiler) - uses your system `protoc` if present, otherwise downloads a pinned version
5. **protoc-gen-elixir** plugin - automatically installed by the script (resolved even behind asdf/rtx shims)

### Updating Protobuf Files

The project includes an automated script to update all protobuf definitions from Google's official repositories:

```bash
# Make the script executable (if needed)
chmod +x update-protos.sh

# Run the update script
./update-protos.sh
```

### What the Update Script Does

1. **Installs dependencies**: Automatically installs the `protoc-gen-elixir` plugin if not present
2. **Resolves protoc**: Prefers a system `protoc`; falls back to downloading a pinned version (override with `PROTOC_VERSION=xx.y`)
3. **Clones googleapis**: Shallow-clones (or updates) the latest Google API definitions
4. **Generates Elixir code**: Compiles `.proto` files into Elixir modules with gRPC support, skipping types provided by the `protobuf`/`googleapis` deps
5. **Flattens & cleans**: Collapses the duplicated package directories that protobuf ≥ 0.16 emits, and removes any inherited types
6. **Cross-platform support**: Works on macOS (Intel/ARM) and Linux (x86_64/ARM64)

### Manual Installation of protoc-gen-elixir

If you prefer to install the Elixir protoc plugin manually:

```bash
# Install the protobuf escript globally
mix escript.install hex protobuf

# The plugin will be installed to ~/.mix/escripts/protoc-gen-elixir
# Make sure ~/.mix/escripts is in your PATH
export PATH="$HOME/.mix/escripts:$PATH"
```

### Project Structure

```
googleapis_proto_ex/
├── lib/                          # Generated Elixir modules
│   └── google/
│       ├── api/                  # Only monitoring types missing from :googleapis
│       ├── iam/                  # IAM v1 policy types
│       ├── longrunning/          # (inherited from :googleapis at runtime)
│       ├── logging/              # Cloud Logging v2
│       ├── datastore/            # Datastore APIs
│       ├── bigtable/             # Bigtable APIs
│       ├── pubsub/               # Pub/Sub APIs
│       ├── storage/              # Storage APIs
│       ├── cloud/                # Other Cloud APIs (KMS, Tasks, Secret Manager, BigQuery, …)
│       └── ai/                   # AI/ML APIs
│                                 # NOTE: google/{protobuf,rpc,type} are provided by deps,
│                                 #       not generated here (see "Shared modules" above)
├── staging_folder/               # Temporary build directory
│   ├── googleapis/               # Cloned googleapis repo
│   └── protoc/                   # Downloaded protoc binary
├── update-protos.sh              # Update script
├── mix.exs
└── README.md
```

## Dependencies

This package depends on:

- **protobuf** (~> 0.17) - Elixir Protocol Buffer implementation (provides `Google.Protobuf.*`)
- **grpc** (~> 1.0) - Elixir gRPC implementation; transitively provides the `googleapis` package (`Google.Api.*`, `Google.Rpc.*`, `Google.Type.*`, `Google.Longrunning.*`)

## Troubleshooting

### Permission Issues
```bash
chmod +x update-protos.sh
```

### Missing protoc-gen-elixir
The script will automatically install it, but you can also install manually:
```bash
mix escript.install hex protobuf --force
```

### Platform Support
The update script supports:
- macOS (Intel and Apple Silicon)  
- Linux (x86_64 and ARM64)

### Build Issues
If you encounter compilation issues, try:
1. Clean the project: `mix clean`
2. Remove staging folder: `rm -rf staging_folder`
3. Re-run the update script: `./update-protos.sh`

## Contributing

1. Fork the repository
2. Make your changes
3. Update protobuf files if needed: `./update-protos.sh`  
4. Run tests: `mix test`
5. Submit a pull request

## License

Apache 2.0 License - see LICENSE file for details.

## Links

- [Google APIs Repository](https://github.com/googleapis/googleapis)
- [Protocol Buffers](https://developers.google.com/protocol-buffers)
- [Elixir Protobuf](https://github.com/elixir-protobuf/protobuf)
- [Elixir gRPC](https://github.com/elixir-grpc/grpc)