defmodule Google.Type.TimeOfDay do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :hours, 1, type: :int32
  field :minutes, 2, type: :int32
  field :seconds, 3, type: :int32
  field :nanos, 4, type: :int32
end