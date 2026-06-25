defmodule Google.Cloud.Bigquery.V2.ManagedTableType do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "google.cloud.bigquery.v2.ManagedTableType",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :MANAGED_TABLE_TYPE_UNSPECIFIED, 0
  field :NATIVE, 1
  field :BIGLAKE, 2
end
