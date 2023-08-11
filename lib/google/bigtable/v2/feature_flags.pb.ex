defmodule Google.Bigtable.V2.FeatureFlags do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :reverse_scans, 1, type: :bool, json_name: "reverseScans"
  field :mutate_rows_rate_limit, 3, type: :bool, json_name: "mutateRowsRateLimit"
  field :last_scanned_row_responses, 4, type: :bool, json_name: "lastScannedRowResponses"
end