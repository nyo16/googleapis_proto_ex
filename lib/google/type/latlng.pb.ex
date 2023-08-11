defmodule Google.Type.LatLng do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :latitude, 1, type: :double
  field :longitude, 2, type: :double
end
