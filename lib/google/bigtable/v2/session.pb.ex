defmodule Google.Bigtable.V2.SessionType do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "google.bigtable.v2.SessionType",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :SESSION_TYPE_UNSET, 0
  field :SESSION_TYPE_TABLE, 1
  field :SESSION_TYPE_AUTHORIZED_VIEW, 2
  field :SESSION_TYPE_MATERIALIZED_VIEW, 3
  field :SESSION_TYPE_TEST, 9999
end

defmodule Google.Bigtable.V2.TelemetryConfiguration.Level do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "google.bigtable.v2.TelemetryConfiguration.Level",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :LEVEL_UNSPECIFIED, 0
  field :DEBUG, 1
  field :INFO, 2
  field :WARN, 3
  field :ERROR, 4
end

defmodule Google.Bigtable.V2.CloseSessionRequest.CloseSessionReason do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "google.bigtable.v2.CloseSessionRequest.CloseSessionReason",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :CLOSE_SESSION_REASON_UNSET, 0
  field :CLOSE_SESSION_REASON_GOAWAY, 1
  field :CLOSE_SESSION_REASON_ERROR, 2
  field :CLOSE_SESSION_REASON_USER, 3
  field :CLOSE_SESSION_REASON_DOWNSIZE, 4
  field :CLOSE_SESSION_REASON_MISSED_HEARTBEAT, 5
end

defmodule Google.Bigtable.V2.OpenTableRequest.Permission do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "google.bigtable.v2.OpenTableRequest.Permission",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :PERMISSION_UNSET, 0
  field :PERMISSION_READ, 1
  field :PERMISSION_WRITE, 2
  field :PERMISSION_READ_WRITE, 3
end

defmodule Google.Bigtable.V2.OpenAuthorizedViewRequest.Permission do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "google.bigtable.v2.OpenAuthorizedViewRequest.Permission",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :PERMISSION_UNSET, 0
  field :PERMISSION_READ, 1
  field :PERMISSION_WRITE, 2
  field :PERMISSION_READ_WRITE, 3
end

defmodule Google.Bigtable.V2.OpenMaterializedViewRequest.Permission do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "google.bigtable.v2.OpenMaterializedViewRequest.Permission",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :PERMISSION_UNSET, 0
  field :PERMISSION_READ, 1
end

defmodule Google.Bigtable.V2.GetClientConfigurationRequest do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.GetClientConfigurationRequest",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :instance_name, 1, type: :string, json_name: "instanceName", deprecated: false
  field :app_profile_id, 2, type: :string, json_name: "appProfileId", deprecated: false
end

defmodule Google.Bigtable.V2.LoadBalancingOptions.LeastInFlight do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.LoadBalancingOptions.LeastInFlight",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :random_subset_size, 1, type: :int64, json_name: "randomSubsetSize"
end

defmodule Google.Bigtable.V2.LoadBalancingOptions.PeakEwma do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.LoadBalancingOptions.PeakEwma",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :random_subset_size, 1, type: :int64, json_name: "randomSubsetSize"
end

defmodule Google.Bigtable.V2.LoadBalancingOptions.Random do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.LoadBalancingOptions.Random",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3
end

defmodule Google.Bigtable.V2.LoadBalancingOptions do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.LoadBalancingOptions",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  oneof :load_balancing_strategy, 0

  field :least_in_flight, 1,
    type: Google.Bigtable.V2.LoadBalancingOptions.LeastInFlight,
    json_name: "leastInFlight",
    oneof: 0

  field :peak_ewma, 2,
    type: Google.Bigtable.V2.LoadBalancingOptions.PeakEwma,
    json_name: "peakEwma",
    oneof: 0

  field :random, 4, type: Google.Bigtable.V2.LoadBalancingOptions.Random, oneof: 0
end

defmodule Google.Bigtable.V2.SessionClientConfiguration.ChannelPoolConfiguration.DirectAccessWithFallback do
  @moduledoc false

  use Protobuf,
    full_name:
      "google.bigtable.v2.SessionClientConfiguration.ChannelPoolConfiguration.DirectAccessWithFallback",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :error_rate_threshold, 1, type: :float, json_name: "errorRateThreshold"
  field :check_interval, 2, type: Google.Protobuf.Duration, json_name: "checkInterval"
end

defmodule Google.Bigtable.V2.SessionClientConfiguration.ChannelPoolConfiguration.DirectAccessOnly do
  @moduledoc false

  use Protobuf,
    full_name:
      "google.bigtable.v2.SessionClientConfiguration.ChannelPoolConfiguration.DirectAccessOnly",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3
end

defmodule Google.Bigtable.V2.SessionClientConfiguration.ChannelPoolConfiguration.CloudPathOnly do
  @moduledoc false

  use Protobuf,
    full_name:
      "google.bigtable.v2.SessionClientConfiguration.ChannelPoolConfiguration.CloudPathOnly",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3
end

defmodule Google.Bigtable.V2.SessionClientConfiguration.ChannelPoolConfiguration do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.SessionClientConfiguration.ChannelPoolConfiguration",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  oneof :mode, 0

  field :min_server_count, 1, type: :int32, json_name: "minServerCount"
  field :max_server_count, 2, type: :int32, json_name: "maxServerCount"
  field :per_server_session_count, 3, type: :int32, json_name: "perServerSessionCount"

  field :direct_access_with_fallback, 4,
    type:
      Google.Bigtable.V2.SessionClientConfiguration.ChannelPoolConfiguration.DirectAccessWithFallback,
    json_name: "directAccessWithFallback",
    oneof: 0

  field :direct_access_only, 5,
    type: Google.Bigtable.V2.SessionClientConfiguration.ChannelPoolConfiguration.DirectAccessOnly,
    json_name: "directAccessOnly",
    oneof: 0

  field :cloud_path_only, 6,
    type: Google.Bigtable.V2.SessionClientConfiguration.ChannelPoolConfiguration.CloudPathOnly,
    json_name: "cloudPathOnly",
    oneof: 0
end

defmodule Google.Bigtable.V2.SessionClientConfiguration.SessionPoolConfiguration do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.SessionClientConfiguration.SessionPoolConfiguration",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :headroom, 1, type: :float
  field :min_session_count, 2, type: :int32, json_name: "minSessionCount"
  field :max_session_count, 3, type: :int32, json_name: "maxSessionCount"
  field :new_session_queue_length, 4, type: :int32, json_name: "newSessionQueueLength"
  field :new_session_creation_budget, 5, type: :int32, json_name: "newSessionCreationBudget"

  field :new_session_creation_penalty, 6,
    type: Google.Protobuf.Duration,
    json_name: "newSessionCreationPenalty"

  field :consecutive_session_failure_threshold, 8,
    type: :int32,
    json_name: "consecutiveSessionFailureThreshold"

  field :load_balancing_options, 9,
    type: Google.Bigtable.V2.LoadBalancingOptions,
    json_name: "loadBalancingOptions"
end

defmodule Google.Bigtable.V2.SessionClientConfiguration do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.SessionClientConfiguration",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :session_load, 1, type: :float, json_name: "sessionLoad"

  field :load_balancing_options, 2,
    type: Google.Bigtable.V2.LoadBalancingOptions,
    json_name: "loadBalancingOptions",
    deprecated: true

  field :channel_configuration, 3,
    type: Google.Bigtable.V2.SessionClientConfiguration.ChannelPoolConfiguration,
    json_name: "channelConfiguration"

  field :session_pool_configuration, 4,
    type: Google.Bigtable.V2.SessionClientConfiguration.SessionPoolConfiguration,
    json_name: "sessionPoolConfiguration"
end

defmodule Google.Bigtable.V2.TelemetryConfiguration do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.TelemetryConfiguration",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :debug_tag_level, 1,
    type: Google.Bigtable.V2.TelemetryConfiguration.Level,
    json_name: "debugTagLevel",
    enum: true
end

defmodule Google.Bigtable.V2.ClientConfiguration.PollingConfiguration do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.ClientConfiguration.PollingConfiguration",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :polling_interval, 1, type: Google.Protobuf.Duration, json_name: "pollingInterval"
  field :validity_duration, 2, type: Google.Protobuf.Duration, json_name: "validityDuration"
  field :max_rpc_retry_count, 6, type: :int32, json_name: "maxRpcRetryCount"
end

defmodule Google.Bigtable.V2.ClientConfiguration do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.ClientConfiguration",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  oneof :polling, 0

  field :session_configuration, 2,
    type: Google.Bigtable.V2.SessionClientConfiguration,
    json_name: "sessionConfiguration"

  field :stop_polling, 3, type: :bool, json_name: "stopPolling", oneof: 0

  field :polling_interval, 4,
    type: Google.Protobuf.Duration,
    json_name: "pollingInterval",
    oneof: 0,
    deprecated: true

  field :polling_configuration, 5,
    type: Google.Bigtable.V2.ClientConfiguration.PollingConfiguration,
    json_name: "pollingConfiguration",
    oneof: 0

  field :telemetry_configuration, 6,
    type: Google.Bigtable.V2.TelemetryConfiguration,
    json_name: "telemetryConfiguration"
end

defmodule Google.Bigtable.V2.SessionRequest do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.SessionRequest",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  oneof :payload, 0

  field :open_session, 1,
    type: Google.Bigtable.V2.OpenSessionRequest,
    json_name: "openSession",
    oneof: 0

  field :close_session, 2,
    type: Google.Bigtable.V2.CloseSessionRequest,
    json_name: "closeSession",
    oneof: 0

  field :virtual_rpc, 3,
    type: Google.Bigtable.V2.VirtualRpcRequest,
    json_name: "virtualRpc",
    oneof: 0
end

defmodule Google.Bigtable.V2.SessionResponse do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.SessionResponse",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  oneof :payload, 0

  field :open_session, 1,
    type: Google.Bigtable.V2.OpenSessionResponse,
    json_name: "openSession",
    oneof: 0

  field :virtual_rpc, 2,
    type: Google.Bigtable.V2.VirtualRpcResponse,
    json_name: "virtualRpc",
    oneof: 0

  field :error, 3, type: Google.Bigtable.V2.ErrorResponse, oneof: 0

  field :session_parameters, 4,
    type: Google.Bigtable.V2.SessionParametersResponse,
    json_name: "sessionParameters",
    oneof: 0

  field :heartbeat, 5, type: Google.Bigtable.V2.HeartbeatResponse, oneof: 0
  field :go_away, 6, type: Google.Bigtable.V2.GoAwayResponse, json_name: "goAway", oneof: 0

  field :session_refresh_config, 7,
    type: Google.Bigtable.V2.SessionRefreshConfig,
    json_name: "sessionRefreshConfig",
    oneof: 0
end

defmodule Google.Bigtable.V2.OpenSessionRequest do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.OpenSessionRequest",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :protocol_version, 1, type: :int64, json_name: "protocolVersion"
  field :flags, 2, type: Google.Bigtable.V2.FeatureFlags

  field :consecutive_failed_connection_attempts, 3,
    type: :int64,
    json_name: "consecutiveFailedConnectionAttempts"

  field :routing_cookie, 4, type: :bytes, json_name: "routingCookie"
  field :payload, 5, type: :bytes
end

defmodule Google.Bigtable.V2.BackendIdentifier do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.BackendIdentifier",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :google_frontend_id, 1, type: :int64, json_name: "googleFrontendId"
  field :application_frontend_id, 2, type: :int64, json_name: "applicationFrontendId"
  field :application_frontend_zone, 3, type: :string, json_name: "applicationFrontendZone"
end

defmodule Google.Bigtable.V2.OpenSessionResponse do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.OpenSessionResponse",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :backend, 2, type: Google.Bigtable.V2.BackendIdentifier
  field :payload, 1, type: :bytes
end

defmodule Google.Bigtable.V2.CloseSessionRequest do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.CloseSessionRequest",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :reason, 1, type: Google.Bigtable.V2.CloseSessionRequest.CloseSessionReason, enum: true
  field :description, 2, type: :string
end

defmodule Google.Bigtable.V2.OpenTableRequest do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.OpenTableRequest",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :table_name, 1, type: :string, json_name: "tableName"
  field :app_profile_id, 2, type: :string, json_name: "appProfileId"
  field :permission, 3, type: Google.Bigtable.V2.OpenTableRequest.Permission, enum: true
end

defmodule Google.Bigtable.V2.OpenTableResponse do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.OpenTableResponse",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3
end

defmodule Google.Bigtable.V2.OpenAuthorizedViewRequest do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.OpenAuthorizedViewRequest",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :authorized_view_name, 1, type: :string, json_name: "authorizedViewName"
  field :app_profile_id, 2, type: :string, json_name: "appProfileId"
  field :permission, 3, type: Google.Bigtable.V2.OpenAuthorizedViewRequest.Permission, enum: true
end

defmodule Google.Bigtable.V2.OpenAuthorizedViewResponse do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.OpenAuthorizedViewResponse",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3
end

defmodule Google.Bigtable.V2.OpenMaterializedViewRequest do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.OpenMaterializedViewRequest",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :materialized_view_name, 1, type: :string, json_name: "materializedViewName"
  field :app_profile_id, 2, type: :string, json_name: "appProfileId"

  field :permission, 3,
    type: Google.Bigtable.V2.OpenMaterializedViewRequest.Permission,
    enum: true
end

defmodule Google.Bigtable.V2.OpenMaterializedViewResponse do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.OpenMaterializedViewResponse",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3
end

defmodule Google.Bigtable.V2.VirtualRpcRequest.Metadata do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.VirtualRpcRequest.Metadata",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :attempt_number, 1, type: :int64, json_name: "attemptNumber"
  field :attempt_start, 2, type: Google.Protobuf.Timestamp, json_name: "attemptStart"
  field :traceparent, 3, type: :string
end

defmodule Google.Bigtable.V2.VirtualRpcRequest do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.VirtualRpcRequest",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :rpc_id, 1, type: :int64, json_name: "rpcId"
  field :deadline, 2, type: Google.Protobuf.Duration
  field :metadata, 3, type: Google.Bigtable.V2.VirtualRpcRequest.Metadata
  field :payload, 4, type: :bytes
end

defmodule Google.Bigtable.V2.ClusterInformation do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.ClusterInformation",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :cluster_id, 1, type: :string, json_name: "clusterId"
  field :zone_id, 2, type: :string, json_name: "zoneId"
end

defmodule Google.Bigtable.V2.SessionRequestStats do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.SessionRequestStats",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :backend_latency, 1, type: Google.Protobuf.Duration, json_name: "backendLatency"
end

defmodule Google.Bigtable.V2.VirtualRpcResponse do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.VirtualRpcResponse",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :rpc_id, 1, type: :int64, json_name: "rpcId"
  field :cluster_info, 2, type: Google.Bigtable.V2.ClusterInformation, json_name: "clusterInfo"
  field :stats, 4, type: Google.Bigtable.V2.SessionRequestStats
  field :payload, 3, type: :bytes
end

defmodule Google.Bigtable.V2.ErrorResponse do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.ErrorResponse",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :rpc_id, 1, type: :int64, json_name: "rpcId"
  field :cluster_info, 2, type: Google.Bigtable.V2.ClusterInformation, json_name: "clusterInfo"
  field :status, 3, type: Google.Rpc.Status
  field :retry_info, 4, type: Google.Rpc.RetryInfo, json_name: "retryInfo"
end

defmodule Google.Bigtable.V2.TableRequest do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.TableRequest",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  oneof :payload, 0

  field :read_row, 1,
    type: Google.Bigtable.V2.SessionReadRowRequest,
    json_name: "readRow",
    oneof: 0

  field :mutate_row, 2,
    type: Google.Bigtable.V2.SessionMutateRowRequest,
    json_name: "mutateRow",
    oneof: 0
end

defmodule Google.Bigtable.V2.TableResponse do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.TableResponse",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  oneof :payload, 0

  field :read_row, 1,
    type: Google.Bigtable.V2.SessionReadRowResponse,
    json_name: "readRow",
    oneof: 0

  field :mutate_row, 2,
    type: Google.Bigtable.V2.SessionMutateRowResponse,
    json_name: "mutateRow",
    oneof: 0
end

defmodule Google.Bigtable.V2.AuthorizedViewRequest do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.AuthorizedViewRequest",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  oneof :payload, 0

  field :read_row, 1,
    type: Google.Bigtable.V2.SessionReadRowRequest,
    json_name: "readRow",
    oneof: 0

  field :mutate_row, 2,
    type: Google.Bigtable.V2.SessionMutateRowRequest,
    json_name: "mutateRow",
    oneof: 0
end

defmodule Google.Bigtable.V2.AuthorizedViewResponse do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.AuthorizedViewResponse",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  oneof :payload, 0

  field :read_row, 1,
    type: Google.Bigtable.V2.SessionReadRowResponse,
    json_name: "readRow",
    oneof: 0

  field :mutate_row, 2,
    type: Google.Bigtable.V2.SessionMutateRowResponse,
    json_name: "mutateRow",
    oneof: 0
end

defmodule Google.Bigtable.V2.MaterializedViewRequest do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.MaterializedViewRequest",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  oneof :payload, 0

  field :read_row, 1,
    type: Google.Bigtable.V2.SessionReadRowRequest,
    json_name: "readRow",
    oneof: 0
end

defmodule Google.Bigtable.V2.MaterializedViewResponse do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.MaterializedViewResponse",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  oneof :payload, 0

  field :read_row, 1,
    type: Google.Bigtable.V2.SessionReadRowResponse,
    json_name: "readRow",
    oneof: 0
end

defmodule Google.Bigtable.V2.SessionReadRowRequest do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.SessionReadRowRequest",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :key, 1, type: :bytes
  field :filter, 2, type: Google.Bigtable.V2.RowFilter
end

defmodule Google.Bigtable.V2.SessionReadRowResponse do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.SessionReadRowResponse",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :row, 1, type: Google.Bigtable.V2.Row
  field :stats, 2, type: Google.Bigtable.V2.RequestStats
end

defmodule Google.Bigtable.V2.SessionMutateRowRequest do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.SessionMutateRowRequest",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :key, 1, type: :bytes
  field :mutations, 2, repeated: true, type: Google.Bigtable.V2.Mutation
end

defmodule Google.Bigtable.V2.SessionMutateRowResponse do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.SessionMutateRowResponse",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3
end

defmodule Google.Bigtable.V2.SessionParametersResponse do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.SessionParametersResponse",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :keep_alive, 1, type: Google.Protobuf.Duration, json_name: "keepAlive"
end

defmodule Google.Bigtable.V2.HeartbeatResponse do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.HeartbeatResponse",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3
end

defmodule Google.Bigtable.V2.GoAwayResponse do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.GoAwayResponse",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :reason, 1, type: :string
  field :description, 2, type: :string
  field :last_rpc_id_admitted, 3, type: :int64, json_name: "lastRpcIdAdmitted"
end

defmodule Google.Bigtable.V2.SessionRefreshConfig.Metadata do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.SessionRefreshConfig.Metadata",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :key, 1, type: :string, deprecated: false
  field :value, 2, type: :bytes, deprecated: false
end

defmodule Google.Bigtable.V2.SessionRefreshConfig do
  @moduledoc false

  use Protobuf,
    full_name: "google.bigtable.v2.SessionRefreshConfig",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :optimized_open_request, 1,
    type: Google.Bigtable.V2.OpenSessionRequest,
    json_name: "optimizedOpenRequest"

  field :metadata, 2,
    repeated: true,
    type: Google.Bigtable.V2.SessionRefreshConfig.Metadata,
    deprecated: false
end
