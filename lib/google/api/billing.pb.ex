defmodule Google.Api.Billing.BillingDestination do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :monitored_resource, 1, type: :string, json_name: "monitoredResource"
  field :metrics, 2, repeated: true, type: :string
end

defmodule Google.Api.Billing do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :consumer_destinations, 8,
    repeated: true,
    type: Google.Api.Billing.BillingDestination,
    json_name: "consumerDestinations"
end