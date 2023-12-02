defmodule ExCountries.Mixfile do
  use Mix.Project

  def project do
    [
      app: :ex_countries,
      version: "0.0.2",
      elixir: "~> 1.15",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps()
    ]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    []
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:jason, "~> 1.2"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp description do
    """
    Constantly updated lists of world countries and their associated alpha-2, alpha-3 and numeric country codes as defined by the ISO 3166 standard, available in Elixir, also ISO 3166-2 codes of provinces/ states associated with the countries
    """
  end

  defp package do
    [
      files: ["lib", "config", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Wasi Ur Rahman"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/wasibiit/ex_countries"},
      description: description()
    ]
  end
end
