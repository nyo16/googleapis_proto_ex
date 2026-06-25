defmodule Google.Cloud.Bigquery.V2.EncryptionConfiguration do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.v2.EncryptionConfiguration",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :kms_key_name, 1,
    type: Google.Protobuf.StringValue,
    json_name: "kmsKeyName",
    deprecated: false
end
