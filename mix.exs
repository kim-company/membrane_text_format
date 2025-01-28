defmodule Membrane.Text.MixProject do
  use Mix.Project

  @github_url "https://github.com/kim-company/membrane_text_format"

  def project do
    [
      app: :membrane_text_format,
      version: "1.0.0",
      elixir: "~> 1.16",
      start_permanent: Mix.env() == :prod,
      source_url: @github_url,
      name: "Membrane Text Format",
      description: description(),
      package: package(),
      deps: deps()
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
    []
  end

  defp package do
    [
      maintainers: ["KIM Keep In Mind"],
      files: ~w(lib mix.exs README.md LICENSE),
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => @github_url}
    ]
  end

  defp description do
    """
    Membrane Text Format specification. Describes buffers that contain text.
    """
  end
end
