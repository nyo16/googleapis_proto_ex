defmodule Google.Cloud.Bigquery.V2.Clustering do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.v2.Clustering",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :fields, 1, repeated: true, type: :string
end
