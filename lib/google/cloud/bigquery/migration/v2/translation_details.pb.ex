defmodule Google.Cloud.Bigquery.Migration.V2.SuggestionStep.SuggestionType do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "google.cloud.bigquery.migration.v2.SuggestionStep.SuggestionType",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :SUGGESTION_TYPE_UNSPECIFIED, 0
  field :QUERY_CUSTOMIZATION, 1
  field :TRANSLATION_EXPLANATION, 2
end

defmodule Google.Cloud.Bigquery.Migration.V2.SuggestionStep.RewriteTarget do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "google.cloud.bigquery.migration.v2.SuggestionStep.RewriteTarget",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :REWRITE_TARGET_UNSPECIFIED, 0
  field :SOURCE_SQL, 1
  field :TARGET_SQL, 2
end

defmodule Google.Cloud.Bigquery.Migration.V2.TranslationDetails do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.migration.v2.TranslationDetails",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :source_target_mapping, 1,
    repeated: true,
    type: Google.Cloud.Bigquery.Migration.V2.SourceTargetMapping,
    json_name: "sourceTargetMapping"

  field :target_base_uri, 2, type: :string, json_name: "targetBaseUri"

  field :source_environment, 3,
    type: Google.Cloud.Bigquery.Migration.V2.SourceEnvironment,
    json_name: "sourceEnvironment"

  field :target_return_literals, 4,
    repeated: true,
    type: :string,
    json_name: "targetReturnLiterals"

  field :target_types, 5, repeated: true, type: :string, json_name: "targetTypes"

  field :suggestion_config, 6,
    type: Google.Cloud.Bigquery.Migration.V2.SuggestionConfig,
    json_name: "suggestionConfig"
end

defmodule Google.Cloud.Bigquery.Migration.V2.SuggestionConfig do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.migration.v2.SuggestionConfig",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :skip_suggestion_steps, 1,
    repeated: true,
    type: Google.Cloud.Bigquery.Migration.V2.SuggestionStep,
    json_name: "skipSuggestionSteps"
end

defmodule Google.Cloud.Bigquery.Migration.V2.SuggestionStep do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.migration.v2.SuggestionStep",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :suggestion_type, 1,
    type: Google.Cloud.Bigquery.Migration.V2.SuggestionStep.SuggestionType,
    json_name: "suggestionType",
    enum: true

  field :rewrite_target, 2,
    type: Google.Cloud.Bigquery.Migration.V2.SuggestionStep.RewriteTarget,
    json_name: "rewriteTarget",
    enum: true
end

defmodule Google.Cloud.Bigquery.Migration.V2.SourceTargetMapping do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.migration.v2.SourceTargetMapping",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :source_spec, 1,
    type: Google.Cloud.Bigquery.Migration.V2.SourceSpec,
    json_name: "sourceSpec"

  field :target_spec, 2,
    type: Google.Cloud.Bigquery.Migration.V2.TargetSpec,
    json_name: "targetSpec"
end

defmodule Google.Cloud.Bigquery.Migration.V2.SourceSpec do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.migration.v2.SourceSpec",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  oneof :source, 0

  field :base_uri, 1, type: :string, json_name: "baseUri", oneof: 0
  field :literal, 2, type: Google.Cloud.Bigquery.Migration.V2.Literal, oneof: 0
  field :gcs_file_path, 4, type: :string, json_name: "gcsFilePath", oneof: 0
  field :encoding, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Bigquery.Migration.V2.TargetSpec do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.migration.v2.TargetSpec",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :relative_path, 1, type: :string, json_name: "relativePath"
end

defmodule Google.Cloud.Bigquery.Migration.V2.Literal do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.migration.v2.Literal",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  oneof :literal_data, 0

  field :literal_string, 2, type: :string, json_name: "literalString", oneof: 0
  field :literal_bytes, 3, type: :bytes, json_name: "literalBytes", oneof: 0
  field :relative_path, 1, type: :string, json_name: "relativePath", deprecated: false
end

defmodule Google.Cloud.Bigquery.Migration.V2.SourceEnvironment do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.migration.v2.SourceEnvironment",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :default_database, 1, type: :string, json_name: "defaultDatabase"
  field :schema_search_path, 2, repeated: true, type: :string, json_name: "schemaSearchPath"

  field :metadata_store_dataset, 3,
    type: :string,
    json_name: "metadataStoreDataset",
    deprecated: false
end
