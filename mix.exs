defmodule GoogleapisProtoEx.MixProject do
  use Mix.Project

  def project do
    [
      app: :googleapis_proto_ex,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "GoogleapisProtoEx",
      source_url: "https://github.com/nyo16/googleapis_proto_ex",
      docs: [
        main: "GoogleapisProtoEx",
        extras: ["README.md"]
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:protobuf, "~> 0.7.1"},
      {:grpc, github: "elixir-grpc/grpc"}
    ]
  end
end
