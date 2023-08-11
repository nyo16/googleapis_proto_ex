defmodule Google.Type.Date do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :year, 1, type: :int32
  field :month, 2, type: :int32
  field :day, 3, type: :int32
end
