defmodule Google.Type.Fraction do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :numerator, 1, type: :int64
  field :denominator, 2, type: :int64
end