defmodule Google.Bigtable.V2.PbExtension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.17.0"

  extend Google.Protobuf.MessageOptions, :open_session_type, 138_898_474,
    optional: true,
    type: Google.Bigtable.V2.SessionType,
    json_name: "openSessionType",
    enum: true

  extend Google.Protobuf.MessageOptions, :vrpc_session_type, 138_899_157,
    repeated: true,
    type: Google.Bigtable.V2.SessionType,
    json_name: "vrpcSessionType",
    enum: true

  extend Google.Protobuf.MethodOptions, :rpc_session_type, 137_964_804,
    optional: true,
    type: Google.Bigtable.V2.SessionType,
    json_name: "rpcSessionType",
    enum: true
end
