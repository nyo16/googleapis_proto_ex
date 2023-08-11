defmodule Google.Datastore.V1.AggregationResult.AggregatePropertiesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :key, 1, type: :string
  field :value, 2, type: Google.Datastore.V1.Value
end
defmodule Google.Datastore.V1.AggregationResult do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :aggregate_properties, 2,
    repeated: true,
    type: Google.Datastore.V1.AggregationResult.AggregatePropertiesEntry,
    json_name: "aggregateProperties",
    map: true
end
defmodule Google.Datastore.V1.AggregationResultBatch do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :aggregation_results, 1,
    repeated: true,
    type: Google.Datastore.V1.AggregationResult,
    json_name: "aggregationResults"

  field :more_results, 2,
    type: Google.Datastore.V1.QueryResultBatch.MoreResultsType,
    json_name: "moreResults",
    enum: true

  field :read_time, 3, type: Google.Protobuf.Timestamp, json_name: "readTime"
end
