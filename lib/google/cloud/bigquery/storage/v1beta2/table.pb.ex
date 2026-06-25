defmodule Google.Cloud.Bigquery.Storage.V1beta2.TableFieldSchema.Type do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "google.cloud.bigquery.storage.v1beta2.TableFieldSchema.Type",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :STRING, 1
  field :INT64, 2
  field :DOUBLE, 3
  field :STRUCT, 4
  field :BYTES, 5
  field :BOOL, 6
  field :TIMESTAMP, 7
  field :DATE, 8
  field :TIME, 9
  field :DATETIME, 10
  field :GEOGRAPHY, 11
  field :NUMERIC, 12
  field :BIGNUMERIC, 13
  field :INTERVAL, 14
  field :JSON, 15
end

defmodule Google.Cloud.Bigquery.Storage.V1beta2.TableFieldSchema.Mode do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "google.cloud.bigquery.storage.v1beta2.TableFieldSchema.Mode",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :NULLABLE, 1
  field :REQUIRED, 2
  field :REPEATED, 3
end

defmodule Google.Cloud.Bigquery.Storage.V1beta2.TableSchema do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.storage.v1beta2.TableSchema",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :fields, 1, repeated: true, type: Google.Cloud.Bigquery.Storage.V1beta2.TableFieldSchema
end

defmodule Google.Cloud.Bigquery.Storage.V1beta2.TableFieldSchema do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.storage.v1beta2.TableFieldSchema",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :type, 2,
    type: Google.Cloud.Bigquery.Storage.V1beta2.TableFieldSchema.Type,
    enum: true,
    deprecated: false

  field :mode, 3,
    type: Google.Cloud.Bigquery.Storage.V1beta2.TableFieldSchema.Mode,
    enum: true,
    deprecated: false

  field :fields, 4,
    repeated: true,
    type: Google.Cloud.Bigquery.Storage.V1beta2.TableFieldSchema,
    deprecated: false

  field :description, 6, type: :string, deprecated: false
end
