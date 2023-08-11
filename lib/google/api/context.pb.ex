defmodule Google.Api.Context do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :rules, 1, repeated: true, type: Google.Api.ContextRule
end
defmodule Google.Api.ContextRule do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :selector, 1, type: :string
  field :requested, 2, repeated: true, type: :string
  field :provided, 3, repeated: true, type: :string

  field :allowed_request_extensions, 4,
    repeated: true,
    type: :string,
    json_name: "allowedRequestExtensions"

  field :allowed_response_extensions, 5,
    repeated: true,
    type: :string,
    json_name: "allowedResponseExtensions"
end