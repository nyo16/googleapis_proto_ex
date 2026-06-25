defmodule GoogleapisProtoExTest do
  use ExUnit.Case, async: true

  # These tests are intentionally lightweight smoke checks. The library is
  # entirely generated code, so the real risks are structural regressions in
  # the generation step:
  #
  #   1. Re-introducing modules that collide with our dependencies
  #      (google.protobuf.* from :protobuf, google.api/rpc/type/longrunning.*
  #      from :googleapis). A collision shows up as a duplicate-module compile
  #      warning, not a runtime failure, so we assert the modules resolve to the
  #      dependency rather than to a file under lib/.
  #   2. Dropping a module that a service references but that no dependency
  #      provides (a coverage gap). Those references are plain atoms, so they
  #      only blow up at encode/decode time — hence the round-trip checks below.

  describe "generated service messages round-trip" do
    test "Pub/Sub message" do
      msg = %Google.Pubsub.V1.PubsubMessage{data: "hello", attributes: %{"k" => "v"}}

      assert ^msg =
               msg
               |> Google.Pubsub.V1.PubsubMessage.encode()
               |> Google.Pubsub.V1.PubsubMessage.decode()
    end

    test "Datastore entity" do
      assert %Google.Datastore.V1.Entity{} =
               %Google.Datastore.V1.Entity{}
               |> Google.Datastore.V1.Entity.encode()
               |> Google.Datastore.V1.Entity.decode()
    end
  end

  describe "shared modules are inherited from dependencies, not redefined here" do
    test "google.protobuf.* comes from :protobuf" do
      assert from_dep?(Google.Protobuf.Timestamp)
      assert from_dep?(Google.Protobuf.Struct)
    end

    test "google.{api,rpc,type,longrunning}.* come from :googleapis" do
      assert from_dep?(Google.Rpc.Status)
      assert from_dep?(Google.Type.Expr)
      assert from_dep?(Google.Longrunning.Operation)
      assert from_dep?(Google.Api.Http)
    end
  end

  describe "gap-fill: google.api monitoring types absent from :googleapis" do
    test "are generated locally and encode with their dependency-provided fields" do
      # MetricDescriptor references Google.Api.LabelDescriptor (local gap-fill)
      # and Google.Api.LaunchStage (provided by :googleapis).
      md = %Google.Api.MetricDescriptor{
        name: "m",
        launch_stage: :GA,
        labels: [%Google.Api.LabelDescriptor{key: "k"}]
      }

      assert is_binary(Google.Api.MetricDescriptor.encode(md))
      assert from_lib?(Google.Api.MetricDescriptor)
      assert from_lib?(Google.Api.MonitoredResource)
    end

    test "Cloud Logging LogEntry resolves its google.api.MonitoredResource reference" do
      entry = %Google.Logging.V2.LogEntry{
        log_name: "projects/p/logs/l",
        resource: %Google.Api.MonitoredResource{type: "global"}
      }

      assert %Google.Logging.V2.LogEntry{} =
               entry |> Google.Logging.V2.LogEntry.encode() |> Google.Logging.V2.LogEntry.decode()
    end
  end

  # A module is "from a dependency" when its source file lives under deps/,
  # and "from this lib" when it lives under this project's lib/.
  defp from_dep?(mod), do: source_dir(mod) =~ ~r{/deps/}
  defp from_lib?(mod), do: not from_dep?(mod)

  defp source_dir(mod) do
    mod.module_info(:compile)[:source] |> to_string()
  end
end
