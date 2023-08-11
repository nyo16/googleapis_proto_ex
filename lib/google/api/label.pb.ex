defmodule Google.Api.LabelDescriptor.ValueType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :STRING, 0
  field :BOOL, 1
  field :INT64, 2
end
defmodule Google.Api.LabelDescriptor do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :key, 1, type: :string

  field :value_type, 2,
    type: Google.Api.LabelDescriptor.ValueType,
    json_name: "valueType",
    enum: true

  field :description, 3, type: :string
end
