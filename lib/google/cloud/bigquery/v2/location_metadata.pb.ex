defmodule Google.Cloud.Bigquery.V2.LocationMetadata do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.v2.LocationMetadata",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :legacy_location_id, 1, type: :string, json_name: "legacyLocationId"
end
