defmodule Google.Api.Logging.LoggingDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :monitored_resource, 3, type: :string, json_name: "monitoredResource"
  field :logs, 1, repeated: true, type: :string
end
defmodule Google.Api.Logging do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :producer_destinations, 1,
    repeated: true,
    type: Google.Api.Logging.LoggingDestination,
    json_name: "producerDestinations"

  field :consumer_destinations, 2,
    repeated: true,
    type: Google.Api.Logging.LoggingDestination,
    json_name: "consumerDestinations"
end
