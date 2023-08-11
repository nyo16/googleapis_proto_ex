defmodule Google.Type.Interval do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
end