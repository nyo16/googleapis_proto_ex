defmodule Google.Cloud.Bigquery.V2.PropertyGraphReference do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.v2.PropertyGraphReference",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :dataset_id, 2, type: :string, json_name: "datasetId", deprecated: false
  field :property_graph_id, 3, type: :string, json_name: "propertyGraphId", deprecated: false
end
