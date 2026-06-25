defmodule Google.Cloud.Bigquery.Migration.V2.AssessmentTaskDetails do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.migration.v2.AssessmentTaskDetails",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :input_path, 1, type: :string, json_name: "inputPath", deprecated: false
  field :output_dataset, 2, type: :string, json_name: "outputDataset", deprecated: false
  field :querylogs_path, 3, type: :string, json_name: "querylogsPath", deprecated: false
  field :data_source, 4, type: :string, json_name: "dataSource", deprecated: false

  field :feature_handle, 6,
    proto3_optional: true,
    type: Google.Cloud.Bigquery.Migration.V2.AssessmentFeatureHandle,
    json_name: "featureHandle",
    deprecated: false
end

defmodule Google.Cloud.Bigquery.Migration.V2.AssessmentFeatureHandle do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.migration.v2.AssessmentFeatureHandle",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :add_shareable_dataset, 1,
    proto3_optional: true,
    type: :bool,
    json_name: "addShareableDataset",
    deprecated: false
end
