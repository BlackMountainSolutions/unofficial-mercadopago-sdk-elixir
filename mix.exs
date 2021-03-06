defmodule UnofficialMercadopagoSdkElixir.MixProject do
  use Mix.Project

  def project do
    [
      app: :unofficial_mercadopago_sdk_elixir,
      version: "1.3.0",
      elixir: "~> 1.9",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: "Very thin layer to support MercadoPago operations.",
      package: package(),
      source_url: "https://github.com/BlackMountainSolutions/unofficial-mercadopago-sdk-elixir"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      applications: [:httpoison, :poison],
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:httpoison, "~> 1.6.2"},
      {:poison, "~> 4.0.1"}
    ]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Franco Montenegro"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/BlackMountainSolutions/unofficial-mercadopago-sdk-elixir"
      }
    ]
  end
end
