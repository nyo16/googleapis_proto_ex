defmodule Google.Iam.V1.ResourcePolicyMember do
  @moduledoc false

  use Protobuf,
    full_name: "google.iam.v1.ResourcePolicyMember",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :iam_policy_name_principal, 1,
    type: :string,
    json_name: "iamPolicyNamePrincipal",
    deprecated: false

  field :iam_policy_uid_principal, 2,
    type: :string,
    json_name: "iamPolicyUidPrincipal",
    deprecated: false
end
