defmodule Google.Cloud.Bigquery.V2.UserDefinedFunctionResource do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.v2.UserDefinedFunctionResource",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :resource_uri, 1, type: Google.Protobuf.StringValue, json_name: "resourceUri"
  field :inline_code, 2, type: Google.Protobuf.StringValue, json_name: "inlineCode"
end
