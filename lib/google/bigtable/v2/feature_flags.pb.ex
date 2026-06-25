defmodule Google.Bigtable.V2.FeatureFlags do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.FeatureFlags",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :reverse_scans, 1, type: :bool, json_name: "reverseScans"
  field :mutate_rows_rate_limit, 3, type: :bool, json_name: "mutateRowsRateLimit"
  field :mutate_rows_rate_limit2, 5, type: :bool, json_name: "mutateRowsRateLimit2"
  field :last_scanned_row_responses, 4, type: :bool, json_name: "lastScannedRowResponses"
  field :routing_cookie, 6, type: :bool, json_name: "routingCookie"
  field :retry_info, 7, type: :bool, json_name: "retryInfo"
  field :client_side_metrics_enabled, 8, type: :bool, json_name: "clientSideMetricsEnabled"
  field :traffic_director_enabled, 9, type: :bool, json_name: "trafficDirectorEnabled"
  field :direct_access_requested, 10, type: :bool, json_name: "directAccessRequested"
  field :peer_info, 11, type: :bool, json_name: "peerInfo"
  field :sessions_compatible, 12, type: :bool, json_name: "sessionsCompatible"
  field :sessions_required, 13, type: :bool, json_name: "sessionsRequired"
end
