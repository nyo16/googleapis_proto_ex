defmodule Google.Api.Monitoring.MonitoringDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :monitored_resource, 1, type: :string, json_name: "monitoredResource"
  field :metrics, 2, repeated: true, type: :string
end
defmodule Google.Api.Monitoring do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :producer_destinations, 1,
    repeated: true,
    type: Google.Api.Monitoring.MonitoringDestination,
    json_name: "producerDestinations"

  field :consumer_destinations, 2,
    repeated: true,
    type: Google.Api.Monitoring.MonitoringDestination,
    json_name: "consumerDestinations"
end
