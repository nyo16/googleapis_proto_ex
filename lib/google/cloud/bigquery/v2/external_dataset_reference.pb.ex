defmodule Google.Cloud.Bigquery.V2.ExternalDatasetReference do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.v2.ExternalDatasetReference",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :external_source, 2, type: :string, json_name: "externalSource", deprecated: false
  field :connection, 3, type: :string, deprecated: false
end
