defmodule Google.Api.Control do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :environment, 1, type: :string

  field :method_policies, 4,
    repeated: true,
    type: Google.Api.MethodPolicy,
    json_name: "methodPolicies"
end