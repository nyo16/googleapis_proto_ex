defmodule Google.Type.LocalizedText do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :text, 1, type: :string
  field :language_code, 2, type: :string, json_name: "languageCode"
end
