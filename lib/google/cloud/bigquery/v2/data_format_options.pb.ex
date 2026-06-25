defmodule Google.Cloud.Bigquery.V2.DataFormatOptions.TimestampOutputFormat do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "google.cloud.bigquery.v2.DataFormatOptions.TimestampOutputFormat",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :TIMESTAMP_OUTPUT_FORMAT_UNSPECIFIED, 0
  field :FLOAT64, 1
  field :INT64, 2
  field :ISO8601_STRING, 3
end

defmodule Google.Cloud.Bigquery.V2.DataFormatOptions do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.v2.DataFormatOptions",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :use_int64_timestamp, 1, type: :bool, json_name: "useInt64Timestamp", deprecated: false

  field :timestamp_output_format, 3,
    type: Google.Cloud.Bigquery.V2.DataFormatOptions.TimestampOutputFormat,
    json_name: "timestampOutputFormat",
    enum: true,
    deprecated: false
end
