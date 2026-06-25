defmodule Google.Cloud.Bigquery.Storage.V1beta1.TableReadOptions do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.storage.v1beta1.TableReadOptions",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :selected_fields, 1, repeated: true, type: :string, json_name: "selectedFields"
  field :row_restriction, 2, type: :string, json_name: "rowRestriction"
end
