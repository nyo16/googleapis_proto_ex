defmodule Google.Cloud.Bigquery.V2.ForeignTypeInfo.TypeSystem do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "google.cloud.bigquery.v2.ForeignTypeInfo.TypeSystem",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :TYPE_SYSTEM_UNSPECIFIED, 0
  field :HIVE, 1
end

defmodule Google.Cloud.Bigquery.V2.TableFieldSchema.RoundingMode do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "google.cloud.bigquery.v2.TableFieldSchema.RoundingMode",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :ROUNDING_MODE_UNSPECIFIED, 0
  field :ROUND_HALF_AWAY_FROM_ZERO, 1
  field :ROUND_HALF_EVEN, 2
end

defmodule Google.Cloud.Bigquery.V2.TableFieldSchema.GeneratedColumn.GeneratedMode do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "google.cloud.bigquery.v2.TableFieldSchema.GeneratedColumn.GeneratedMode",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :GENERATED_MODE_UNSPECIFIED, 0
  field :GENERATED_ALWAYS, 1
  field :GENERATED_BY_DEFAULT, 2
end

defmodule Google.Cloud.Bigquery.V2.TableSchema do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.v2.TableSchema",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :fields, 1, repeated: true, type: Google.Cloud.Bigquery.V2.TableFieldSchema

  field :foreign_type_info, 3,
    type: Google.Cloud.Bigquery.V2.ForeignTypeInfo,
    json_name: "foreignTypeInfo",
    deprecated: false
end

defmodule Google.Cloud.Bigquery.V2.ForeignTypeInfo do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.v2.ForeignTypeInfo",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :type_system, 1,
    type: Google.Cloud.Bigquery.V2.ForeignTypeInfo.TypeSystem,
    json_name: "typeSystem",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Bigquery.V2.DataPolicyOption do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.v2.DataPolicyOption",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :name, 1, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Bigquery.V2.DataPolicyList do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.v2.DataPolicyList",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :data_policies, 1,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.DataPolicyOption,
    json_name: "dataPolicies"
end

defmodule Google.Cloud.Bigquery.V2.TableFieldSchema.PolicyTagList do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.v2.TableFieldSchema.PolicyTagList",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :names, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Bigquery.V2.TableFieldSchema.DataGovernanceTagsInfo.DataGovernanceTagsEntry do
  @moduledoc false

  use Protobuf,
    full_name:
      "google.cloud.bigquery.v2.TableFieldSchema.DataGovernanceTagsInfo.DataGovernanceTagsEntry",
    map: true,
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Bigquery.V2.TableFieldSchema.DataGovernanceTagsInfo do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.v2.TableFieldSchema.DataGovernanceTagsInfo",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :data_governance_tags, 1,
    repeated: true,
    type:
      Google.Cloud.Bigquery.V2.TableFieldSchema.DataGovernanceTagsInfo.DataGovernanceTagsEntry,
    json_name: "dataGovernanceTags",
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Bigquery.V2.TableFieldSchema.FieldElementType do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.v2.TableFieldSchema.FieldElementType",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :type, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Bigquery.V2.TableFieldSchema.GeneratedExpressionInfo do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.v2.TableFieldSchema.GeneratedExpressionInfo",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :generation_expression, 1,
    proto3_optional: true,
    type: :string,
    json_name: "generationExpression",
    deprecated: false

  field :asynchronous, 2, proto3_optional: true, type: :bool, deprecated: false
  field :stored, 3, proto3_optional: true, type: :bool, deprecated: false
end

defmodule Google.Cloud.Bigquery.V2.TableFieldSchema.GeneratedColumn do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.v2.TableFieldSchema.GeneratedColumn",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  oneof :definition, 0

  field :generated_mode, 1,
    proto3_optional: true,
    type: Google.Cloud.Bigquery.V2.TableFieldSchema.GeneratedColumn.GeneratedMode,
    json_name: "generatedMode",
    enum: true,
    deprecated: false

  field :generated_expression_info, 3,
    type: Google.Cloud.Bigquery.V2.TableFieldSchema.GeneratedExpressionInfo,
    json_name: "generatedExpressionInfo",
    oneof: 0
end

defmodule Google.Cloud.Bigquery.V2.TableFieldSchema do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.v2.TableFieldSchema",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :type, 2, type: :string, deprecated: false
  field :mode, 3, type: :string, deprecated: false

  field :fields, 4,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.TableFieldSchema,
    deprecated: false

  field :description, 6, type: Google.Protobuf.StringValue, deprecated: false

  field :policy_tags, 9,
    type: Google.Cloud.Bigquery.V2.TableFieldSchema.PolicyTagList,
    json_name: "policyTags",
    deprecated: false

  field :data_governance_tags_info, 30,
    type: Google.Cloud.Bigquery.V2.TableFieldSchema.DataGovernanceTagsInfo,
    json_name: "dataGovernanceTagsInfo",
    deprecated: false

  field :data_policies, 21,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.DataPolicyOption,
    json_name: "dataPolicies",
    deprecated: false

  field :data_policy_list, 29,
    type: Google.Cloud.Bigquery.V2.DataPolicyList,
    json_name: "dataPolicyList",
    deprecated: false

  field :max_length, 10, type: :int64, json_name: "maxLength", deprecated: false
  field :precision, 11, type: :int64, deprecated: false
  field :scale, 12, type: :int64, deprecated: false

  field :timestamp_precision, 27,
    type: Google.Protobuf.Int64Value,
    json_name: "timestampPrecision",
    deprecated: false

  field :rounding_mode, 15,
    type: Google.Cloud.Bigquery.V2.TableFieldSchema.RoundingMode,
    json_name: "roundingMode",
    enum: true,
    deprecated: false

  field :collation, 13, type: Google.Protobuf.StringValue, deprecated: false

  field :default_value_expression, 14,
    type: Google.Protobuf.StringValue,
    json_name: "defaultValueExpression",
    deprecated: false

  field :range_element_type, 18,
    type: Google.Cloud.Bigquery.V2.TableFieldSchema.FieldElementType,
    json_name: "rangeElementType",
    deprecated: false

  field :foreign_type_definition, 23,
    type: :string,
    json_name: "foreignTypeDefinition",
    deprecated: false

  field :generated_column, 28,
    type: Google.Cloud.Bigquery.V2.TableFieldSchema.GeneratedColumn,
    json_name: "generatedColumn",
    deprecated: false
end
