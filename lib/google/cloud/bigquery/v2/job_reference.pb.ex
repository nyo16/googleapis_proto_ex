defmodule Google.Cloud.Bigquery.V2.JobReference do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.v2.JobReference",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :job_id, 2, type: :string, json_name: "jobId", deprecated: false
  field :location, 3, type: Google.Protobuf.StringValue, deprecated: false
end
