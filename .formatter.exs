# Used by "mix format"
[
  # Brings in protobuf's locals_without_parens (field/oneof/extend/extensions)
  # so the generated *.pb.ex files match protoc-gen-elixir's output style.
  import_deps: [:protobuf],
  # Generated gRPC service stubs use `rpc :Name, Input, Output` without parens.
  locals_without_parens: [rpc: 3],
  inputs: ["{mix,.formatter}.exs", "{config,lib,test}/**/*.{ex,exs}"]
]
