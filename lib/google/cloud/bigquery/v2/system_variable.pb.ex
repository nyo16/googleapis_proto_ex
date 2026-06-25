defmodule Google.Cloud.Bigquery.V2.SystemVariables.TypesEntry do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.v2.SystemVariables.TypesEntry",
    map: true,
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Bigquery.V2.StandardSqlDataType
end

defmodule Google.Cloud.Bigquery.V2.SystemVariables do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.v2.SystemVariables",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :types, 1,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.SystemVariables.TypesEntry,
    map: true,
    deprecated: false

  field :values, 2, type: Google.Protobuf.Struct, deprecated: false
end
