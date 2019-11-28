defmodule UnofficialMercadopagoSdkElixir.MixProject do
  use Mix.Project

  def project do
    [
      app: :unofficial_mercadopago_sdk_elixir,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      applications: [:httpoison],
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:httpoison, "~> 1.6"},
      {:poison, "~> 3.1"}
    ]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README", "LICENSE*"],
      maintainers: ["Franco Montenegro"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/BlackMountainSolutions/unofficial-mercadopago-sdk-elixir"}
    ]
  end
end
