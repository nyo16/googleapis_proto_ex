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
- **Google AI Generative Language** (v1, v1alpha, v1beta, v1beta2, v1beta3) - AI/ML APIs
- **Core Google APIs** - Common types, RPC definitions, and annotations

## Installation

Add `googleapis_proto_ex` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:googleapis_proto_ex, "~> 0.2.0"},
    {:grpc, "~> 0.10.2"}
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

1. **Elixir** (>= 1.10)
2. **Mix** 
3. **Git**
4. **protoc** (Protocol Buffer Compiler) - automatically downloaded by the script
5. **protoc-gen-elixir** plugin - automatically installed by the script

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
2. **Downloads protoc**: Downloads the latest Protocol Buffer compiler (v32.0) for your platform
3. **Clones googleapis**: Downloads the latest Google API definitions
4. **Generates Elixir code**: Compiles all `.proto` files into Elixir modules with gRPC support
5. **Cross-platform support**: Works on macOS (Intel/ARM) and Linux (x86_64/ARM64)

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
│   ├── google/
│   │   ├── api/                  # Google API annotations
│   │   ├── rpc/                  # Google RPC definitions  
│   │   ├── type/                 # Common Google types
│   │   ├── datastore/            # Datastore APIs
│   │   ├── bigtable/             # Bigtable APIs
│   │   ├── pubsub/               # Pub/Sub APIs
│   │   ├── storage/              # Storage APIs
│   │   ├── cloud/                # Other Cloud APIs
│   │   └── ai/                   # AI/ML APIs
│   └── protobuf/                 # Core protobuf types
├── staging_folder/               # Temporary build directory
│   ├── googleapis/               # Cloned googleapis repo
│   └── protoc/                   # Downloaded protoc binary
├── update-protos.sh              # Update script
├── mix.exs
└── README.md
```

## Dependencies

This package depends on:

- **protobuf** (~> 0.15.0) - Elixir Protocol Buffer implementation
- **grpc** (~> 0.10.2) - Elixir gRPC implementation

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