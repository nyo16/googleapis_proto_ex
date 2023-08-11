defmodule Google.Api.FieldPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :selector, 1, type: :string
  field :resource_permission, 2, type: :string, json_name: "resourcePermission"
  field :resource_type, 3, type: :string, json_name: "resourceType"
end
defmodule Google.Api.MethodPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :selector, 9, type: :string

  field :request_policies, 2,
    repeated: true,
    type: Google.Api.FieldPolicy,
    json_name: "requestPolicies"
end
defmodule Google.Api.PbExtension do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  extend Google.Protobuf.FieldOptions, :field_policy, 158_361_448,
    optional: true,
    type: Google.Api.FieldPolicy,
    json_name: "fieldPolicy"

  extend Google.Protobuf.MethodOptions, :method_policy, 161_893_301,
    optional: true,
    type: Google.Api.MethodPolicy,
    json_name: "methodPolicy"
end
