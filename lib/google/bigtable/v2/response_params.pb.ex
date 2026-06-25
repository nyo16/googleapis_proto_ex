defmodule Google.Bigtable.V2.ResponseParams do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.ResponseParams",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :zone_id, 1, proto3_optional: true, type: :string, json_name: "zoneId"
  field :cluster_id, 2, proto3_optional: true, type: :string, json_name: "clusterId"
  field :afe_id, 3, proto3_optional: true, type: :int64, json_name: "afeId"
end
