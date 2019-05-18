defmodule Ads1115.MixProject do
  use Mix.Project

  def project do
    [
      app: :ads1115,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: [
        main: "readme",
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
      {:circuits_i2c, "~> 0.3"},
      {:dialyxir, "1.0.0-rc.6", only: :dev},
      {:ex_doc, "~> 0.20", only: :dev}
    ]
  end
end
