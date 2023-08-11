defmodule Google.Type.Money do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :currency_code, 1, type: :string, json_name: "currencyCode"
  field :units, 2, type: :int64
  field :nanos, 3, type: :int32
end