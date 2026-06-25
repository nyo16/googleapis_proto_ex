defmodule Google.Cloud.Bigquery.V2.RangePartitioning.Range do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.v2.RangePartitioning.Range",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :start, 1, type: :string, deprecated: false
  field :end, 2, type: :string, deprecated: false
  field :interval, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Bigquery.V2.RangePartitioning do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.v2.RangePartitioning",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :field, 1, type: :string, deprecated: false
  field :range, 2, type: Google.Cloud.Bigquery.V2.RangePartitioning.Range
end
