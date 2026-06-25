defmodule Google.Iam.V1.GetPolicyOptions do
  @moduledoc false

  use Protobuf,
    full_name: "google.iam.v1.GetPolicyOptions",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :requested_policy_version, 1, type: :int32, json_name: "requestedPolicyVersion"
end
