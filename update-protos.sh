#!/bin/sh
# I copied from here https://github.com/cjab/weddell/blob/master/bin/update-proto kudos to weddell
if [ "$MIX_HOME" = "" ]; then
    export MIX_HOME=$HOME/.mix
fi

PLUGIN_PATH=/Users/nmaroulis/.asdf/shims/protoc-gen-elixir

if [ ! -f $PLUGIN_PATH ]; then
    mix escript.install hex protobuf
fi

DIR="$( cd "$( dirname "$0" )" && pwd )"
TMP_DIR=$DIR/staging_folder
echo $TMP_DIR
OUT=$DIR/lib
PROTOBUF_PATH=$TMP_DIR/protobuf
GOOGLEAPIS_PATH=$TMP_DIR/googleapis
PROTOC_PATH=$TMP_DIR/protoc
PROTOC=$PROTOC_PATH/bin/protoc


PROTOC_URL=https://github.com/protocolbuffers/protobuf/releases/download/v24.0/protoc-24.0-osx-aarch_64.zip

cd $DIR
mkdir -p $TMP_DIR

if [ ! -d "$PROTOC_PATH" ]; then
    wget -O $TMP_DIR/protoc.zip $PROTOC_URL
    cd $TMP_DIR
    unzip protoc.zip -d $PROTOC_PATH
    rm $TMP_DIR/protoc.zip
fi

if [ ! -d "$GOOGLEAPIS_PATH" ]; then
    git clone https://github.com/googleapis/googleapis.git $GOOGLEAPIS_PATH
fi
cd $GOOGLEAPIS_PATH && git pull && cd $DIR

# remove proto files in case that exists.
rm -rf $OUT
# create output directory.
mkdir -p $OUT


$PROTOC -I $PROTOC_PATH/include/google \
--plugin=protoc-gen-elixir=$PLUGIN_PATH \
--elixir_out=plugins=grpc:$OUT \
$PROTOC_PATH/include/google/protobuf/duration.proto

$PROTOC -I $PROTOC_PATH/include/google \
--plugin=protoc-gen-elixir=$PLUGIN_PATH \
--elixir_out=plugins=grpc:$OUT \
$PROTOC_PATH/include/google/protobuf/api.proto

$PROTOC -I $PROTOC_PATH/include/google \
--plugin=protoc-gen-elixir=$PLUGIN_PATH \
--elixir_out=plugins=grpc:$OUT \
$PROTOC_PATH/include/google/protobuf/field_mask.proto

$PROTOC -I $PROTOC_PATH/include/google \
--plugin=protoc-gen-elixir=$PLUGIN_PATH \
--elixir_out=plugins=grpc:$OUT \
$PROTOC_PATH/include/google/protobuf/empty.proto


$PROTOC -I $PROTOC_PATH/include/google \
--plugin=protoc-gen-elixir=$PLUGIN_PATH \
--elixir_out=plugins=grpc:$OUT \
$PROTOC_PATH/include/google/protobuf/timestamp.proto

$PROTOC -I $GOOGLEAPIS_PATH \
--plugin=protoc-gen-elixir=$PLUGIN_PATH \
--elixir_out=plugins=grpc:$OUT \
$GOOGLEAPIS_PATH/google/type/*.proto

$PROTOC -I $GOOGLEAPIS_PATH \
--plugin=protoc-gen-elixir=$PLUGIN_PATH \
--elixir_out=plugins=grpc:$OUT \
$GOOGLEAPIS_PATH/google/rpc/*.proto

$PROTOC -I $GOOGLEAPIS_PATH \
--plugin=protoc-gen-elixir=$PLUGIN_PATH \
--elixir_out=plugins=grpc:$OUT \
$GOOGLEAPIS_PATH/google/api/*.proto

$PROTOC -I $GOOGLEAPIS_PATH \
--plugin=protoc-gen-elixir=$PLUGIN_PATH \
--elixir_out=plugins=grpc:$OUT \
$GOOGLEAPIS_PATH/google/datastore/admin/v1/*.proto

$PROTOC -I $GOOGLEAPIS_PATH \
--plugin=protoc-gen-elixir=$PLUGIN_PATH \
--elixir_out=plugins=grpc:$OUT \
$GOOGLEAPIS_PATH/google/datastore/v1/*.proto

$PROTOC -I $GOOGLEAPIS_PATH \
--plugin=protoc-gen-elixir=$PLUGIN_PATH \
--elixir_out=plugins=grpc:$OUT \
$GOOGLEAPIS_PATH/google/pubsub/v1/*.proto

$PROTOC -I $GOOGLEAPIS_PATH \
--plugin=protoc-gen-elixir=$PLUGIN_PATH \
--elixir_out=plugins=grpc:$OUT \
$GOOGLEAPIS_PATH/google/storage/v1/*.proto

$PROTOC -I $GOOGLEAPIS_PATH \
--plugin=protoc-gen-elixir=$PLUGIN_PATH \
--elixir_out=plugins=grpc:$OUT \
$GOOGLEAPIS_PATH/google/cloud/kms/v1/*.proto

$PROTOC -I $GOOGLEAPIS_PATH \
--plugin=protoc-gen-elixir=$PLUGIN_PATH \
--elixir_out=plugins=grpc:$OUT \
$GOOGLEAPIS_PATH/google/cloud/tasks/v2/*.proto

$PROTOC -I $GOOGLEAPIS_PATH \
--plugin=protoc-gen-elixir=$PLUGIN_PATH \
--elixir_out=plugins=grpc:$OUT \
$(find $GOOGLEAPIS_PATH/google/cloud/secretmanager -iname "*.proto")

$PROTOC -I $GOOGLEAPIS_PATH \
--plugin=protoc-gen-elixir=$PLUGIN_PATH \
--elixir_out=plugins=grpc:$OUT \
$(find $GOOGLEAPIS_PATH/google/bigtable -iname "*.proto")

$PROTOC -I $GOOGLEAPIS_PATH \
--plugin=protoc-gen-elixir=$PLUGIN_PATH \
--elixir_out=plugins=grpc:$OUT \
$(find $GOOGLEAPIS_PATH/google/ai/generativelanguage -iname "*.proto")
