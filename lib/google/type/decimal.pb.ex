defmodule Google.Type.Decimal do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :value, 1, type: :string
end