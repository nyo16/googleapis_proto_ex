defmodule Google.Api.SourceInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :source_files, 1, repeated: true, type: Google.Protobuf.Any, json_name: "sourceFiles"
end
