defmodule Google.Cloud.Bigquery.V2.ModelReference do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.v2.ModelReference",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :dataset_id, 2, type: :string, json_name: "datasetId", deprecated: false
  field :model_id, 3, type: :string, json_name: "modelId", deprecated: false
end
