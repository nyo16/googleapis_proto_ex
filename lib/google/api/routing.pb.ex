defmodule Google.Api.RoutingRule do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :routing_parameters, 2,
    repeated: true,
    type: Google.Api.RoutingParameter,
    json_name: "routingParameters"
end
defmodule Google.Api.RoutingParameter do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :field, 1, type: :string
  field :path_template, 2, type: :string, json_name: "pathTemplate"
end
defmodule Google.Api.PbExtension do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  extend Google.Protobuf.MethodOptions, :routing, 72_295_729,
    optional: true,
    type: Google.Api.RoutingRule
end
