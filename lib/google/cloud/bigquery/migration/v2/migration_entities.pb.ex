defmodule Google.Cloud.Bigquery.Migration.V2.MigrationWorkflow.State do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "google.cloud.bigquery.migration.v2.MigrationWorkflow.State",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :DRAFT, 1
  field :RUNNING, 2
  field :PAUSED, 3
  field :COMPLETED, 4
end

defmodule Google.Cloud.Bigquery.Migration.V2.MigrationTask.State do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "google.cloud.bigquery.migration.v2.MigrationTask.State",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :ORCHESTRATING, 2
  field :RUNNING, 3
  field :PAUSED, 4
  field :SUCCEEDED, 5
  field :FAILED, 6
end

defmodule Google.Cloud.Bigquery.Migration.V2.MigrationSubtask.State do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "google.cloud.bigquery.migration.v2.MigrationSubtask.State",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :RUNNING, 2
  field :SUCCEEDED, 3
  field :FAILED, 4
  field :PAUSED, 5
  field :PENDING_DEPENDENCY, 6
end

defmodule Google.Cloud.Bigquery.Migration.V2.MigrationWorkflow.TasksEntry do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.migration.v2.MigrationWorkflow.TasksEntry",
    map: true,
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Bigquery.Migration.V2.MigrationTask
end

defmodule Google.Cloud.Bigquery.Migration.V2.MigrationWorkflow do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.migration.v2.MigrationWorkflow",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 6, type: :string, json_name: "displayName"

  field :tasks, 2,
    repeated: true,
    type: Google.Cloud.Bigquery.Migration.V2.MigrationWorkflow.TasksEntry,
    map: true

  field :state, 3,
    type: Google.Cloud.Bigquery.Migration.V2.MigrationWorkflow.State,
    enum: true,
    deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :last_update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "lastUpdateTime",
    deprecated: false
end

defmodule Google.Cloud.Bigquery.Migration.V2.MigrationTask do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.migration.v2.MigrationTask",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  oneof :task_details, 0

  field :assessment_task_details, 12,
    type: Google.Cloud.Bigquery.Migration.V2.AssessmentTaskDetails,
    json_name: "assessmentTaskDetails",
    oneof: 0

  field :translation_config_details, 14,
    type: Google.Cloud.Bigquery.Migration.V2.TranslationConfigDetails,
    json_name: "translationConfigDetails",
    oneof: 0

  field :translation_details, 16,
    type: Google.Cloud.Bigquery.Migration.V2.TranslationDetails,
    json_name: "translationDetails",
    oneof: 0

  field :id, 1, type: :string, deprecated: false
  field :type, 2, type: :string

  field :state, 4,
    type: Google.Cloud.Bigquery.Migration.V2.MigrationTask.State,
    enum: true,
    deprecated: false

  field :processing_error, 5,
    type: Google.Rpc.ErrorInfo,
    json_name: "processingError",
    deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :last_update_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "lastUpdateTime",
    deprecated: false

  field :resource_error_details, 17,
    repeated: true,
    type: Google.Cloud.Bigquery.Migration.V2.ResourceErrorDetail,
    json_name: "resourceErrorDetails",
    deprecated: false

  field :resource_error_count, 18,
    type: :int32,
    json_name: "resourceErrorCount",
    deprecated: false

  field :metrics, 19,
    repeated: true,
    type: Google.Cloud.Bigquery.Migration.V2.TimeSeries,
    deprecated: false

  field :task_result, 20,
    type: Google.Cloud.Bigquery.Migration.V2.MigrationTaskResult,
    json_name: "taskResult",
    deprecated: false

  field :total_processing_error_count, 21,
    type: :int32,
    json_name: "totalProcessingErrorCount",
    deprecated: false

  field :total_resource_error_count, 22,
    type: :int32,
    json_name: "totalResourceErrorCount",
    deprecated: false
end

defmodule Google.Cloud.Bigquery.Migration.V2.MigrationSubtask do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.migration.v2.MigrationSubtask",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :task_id, 2, type: :string, json_name: "taskId"
  field :type, 3, type: :string

  field :state, 5,
    type: Google.Cloud.Bigquery.Migration.V2.MigrationSubtask.State,
    enum: true,
    deprecated: false

  field :processing_error, 6,
    type: Google.Rpc.ErrorInfo,
    json_name: "processingError",
    deprecated: false

  field :resource_error_details, 12,
    repeated: true,
    type: Google.Cloud.Bigquery.Migration.V2.ResourceErrorDetail,
    json_name: "resourceErrorDetails",
    deprecated: false

  field :resource_error_count, 13,
    type: :int32,
    json_name: "resourceErrorCount",
    deprecated: false

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :last_update_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "lastUpdateTime",
    deprecated: false

  field :metrics, 11,
    repeated: true,
    type: Google.Cloud.Bigquery.Migration.V2.TimeSeries,
    deprecated: false
end

defmodule Google.Cloud.Bigquery.Migration.V2.MigrationTaskResult do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.migration.v2.MigrationTaskResult",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  oneof :details, 0

  field :translation_task_result, 2,
    type: Google.Cloud.Bigquery.Migration.V2.TranslationTaskResult,
    json_name: "translationTaskResult",
    oneof: 0
end

defmodule Google.Cloud.Bigquery.Migration.V2.TranslationTaskResult do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.migration.v2.TranslationTaskResult",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :translated_literals, 1,
    repeated: true,
    type: Google.Cloud.Bigquery.Migration.V2.Literal,
    json_name: "translatedLiterals"

  field :report_log_messages, 2,
    repeated: true,
    type: Google.Cloud.Bigquery.Migration.V2.GcsReportLogMessage,
    json_name: "reportLogMessages"

  field :console_uri, 3, type: :string, json_name: "consoleUri"
end
