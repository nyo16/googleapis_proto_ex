defmodule Google.Cloud.Bigquery.V2.GenAiFunctionErrorStats do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.v2.GenAiFunctionErrorStats",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :errors, 3, repeated: true, type: :string
  field :num_failed_rows, 5, type: :int64, json_name: "numFailedRows"
end

defmodule Google.Cloud.Bigquery.V2.GenAiFunctionCostOptimizationStats do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.v2.GenAiFunctionCostOptimizationStats",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :num_cost_optimized_rows, 1,
    proto3_optional: true,
    type: :int64,
    json_name: "numCostOptimizedRows"

  field :message, 2, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Bigquery.V2.GenAiFunctionCacheStats do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.v2.GenAiFunctionCacheStats",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :num_cache_hit_rows, 1, proto3_optional: true, type: :int64, json_name: "numCacheHitRows"
end

defmodule Google.Cloud.Bigquery.V2.GenAiFunctionStats do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.v2.GenAiFunctionStats",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :function_name, 1, proto3_optional: true, type: :string, json_name: "functionName"
  field :prompt, 2, proto3_optional: true, type: :string
  field :num_processed_rows, 3, proto3_optional: true, type: :int64, json_name: "numProcessedRows"

  field :error_stats, 4,
    proto3_optional: true,
    type: Google.Cloud.Bigquery.V2.GenAiFunctionErrorStats,
    json_name: "errorStats"

  field :cost_optimization_stats, 5,
    proto3_optional: true,
    type: Google.Cloud.Bigquery.V2.GenAiFunctionCostOptimizationStats,
    json_name: "costOptimizationStats"

  field :cache_stats, 6,
    proto3_optional: true,
    type: Google.Cloud.Bigquery.V2.GenAiFunctionCacheStats,
    json_name: "cacheStats"
end

defmodule Google.Cloud.Bigquery.V2.GenAiErrorStats do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.v2.GenAiErrorStats",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :errors, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Bigquery.V2.GenAiStats do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.bigquery.v2.GenAiStats",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :error_stats, 4,
    proto3_optional: true,
    type: Google.Cloud.Bigquery.V2.GenAiErrorStats,
    json_name: "errorStats"

  field :function_stats, 5,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.GenAiFunctionStats,
    json_name: "functionStats"
end
