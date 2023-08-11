defmodule Google.Protobuf.FieldMask do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :paths, 1, repeated: true, type: :string
end
