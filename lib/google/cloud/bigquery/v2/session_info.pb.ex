defmodule Google.Cloud.Bigquery.V2.SessionInfo do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.v2.SessionInfo",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :session_id, 1, type: :string, json_name: "sessionId", deprecated: false
end
