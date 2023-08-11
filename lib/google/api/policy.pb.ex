defmodule Google.Api.FieldPolicy do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :selector, 1, type: :string
  field :resource_permission, 2, type: :string, json_name: "resourcePermission"
  field :resource_type, 3, type: :string, json_name: "resourceType"
end

defmodule Google.Api.MethodPolicy do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :selector, 9, type: :string

  field :request_policies, 2,
    repeated: true,
    type: Google.Api.FieldPolicy,
    json_name: "requestPolicies"
end