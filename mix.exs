defmodule GoogleapisProtoEx.MixProject do
  use Mix.Project

  def project do
    [
      app: :googleapis_proto_ex,
      version: "0.3.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      name: "GoogleapisProtoEx",
      package: package(),
      source_url: "https://github.com/nyo16/googleapis_proto_ex",
      docs: [
        main: "GoogleapisProtoEx",
        extras: ["README.md"]
      ]
    ]
  end

  defp description() do
    "Google protos for Bigtable, Pubsub, Datastore and more"
  end

  defp package() do
    [
      # This option is only needed when you don't want to use the OTP application name
      name: "googleapis_proto_ex",
      # These are the default files included in the package
      files: ~w(lib .formatter.exs mix.exs README* LICENSE*),
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/nyo16/googleapis_proto_ex"}
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
      {:protobuf, "~> 0.15.0"},
      {:grpc, "~> 0.10.2"},
      {:ex_doc, ">= 0.30.5", only: :dev, runtime: false}
    ]
  end
end
