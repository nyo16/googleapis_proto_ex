#!/bin/sh
# I copied from here https://github.com/cjab/weddell/blob/master/bin/update-proto kudos to weddell
if [ "$MIX_HOME" = "" ]; then
    export MIX_HOME=$HOME/.mix
fi

PLUGIN_PATH=$MIX_HOME/escripts/protoc-gen-elixir

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

FILENAME=""
case "$(uname -s)" in
    
    Darwin)
        FILENAME="osx-x86_64.zip"
        echo "Running on Linux"
    ;;
    
    Linux)
        FILENAME="linux-x86_64.zip"
        echo "Running on Osx"
    ;;
esac

PROTOC_VERSION="3.11.4"
PROTOC_URL=https://github.com/google/protobuf/releases/download/v$PROTOC_VERSION/protoc-$PROTOC_VERSION-$FILENAME

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


# This block will bring everything and compile it but it takes forever to the elixir compilation after.
# $PROTOC -I $GOOGLEAPIS_PATH \
# --plugin=protoc-gen-elixir=$PLUGIN_PATH \
# --elixir_out=plugins=grpc:$OUT \
# $(find $GOOGLEAPIS_PATH/google -iname "*.proto")



$PROTOC -I $PROTOC_PATH/include/google \
--plugin=protoc-gen-elixir=$PLUGIN_PATH \
--elixir_out=plugins=grpc:$OUT \
$PROTOC_PATH/include/google/protobuf/*.proto

$PROTOC -I $GOOGLEAPIS_PATH \
--plugin=protoc-gen-elixir=$PLUGIN_PATH \
--elixir_out=plugins=grpc:$OUT \
$GOOGLEAPIS_PATH/google/datastore/admin/v1/*.proto

$PROTOC -I $GOOGLEAPIS_PATH \
--plugin=protoc-gen-elixir=$PLUGIN_PATH \
--elixir_out=plugins=grpc:$OUT \
$GOOGLEAPIS_PATH/google/pubsub/v1/*.proto

$PROTOC -I $GOOGLEAPIS_PATH \
--plugin=protoc-gen-elixir=$PLUGIN_PATH \
--elixir_out=plugins=grpc:$OUT \
$GOOGLEAPIS_PATH/google/bigtable/v2/*.proto

$PROTOC -I $GOOGLEAPIS_PATH \
--plugin=protoc-gen-elixir=$PLUGIN_PATH \
--elixir_out=plugins=grpc:$OUT \
$GOOGLEAPIS_PATH/google/bigtable/admin/v2/*.proto

$PROTOC -I $GOOGLEAPIS_PATH \
--plugin=protoc-gen-elixir=$PLUGIN_PATH \
--elixir_out=plugins=grpc:$OUT \
$GOOGLEAPIS_PATH/google/rpc/*.proto

$PROTOC -I $GOOGLEAPIS_PATH \
--plugin=protoc-gen-elixir=$PLUGIN_PATH \
--elixir_out=plugins=grpc:$OUT \
$GOOGLEAPIS_PATH/google/datastore/v1/*.proto

rm -rf $TMP_DIR