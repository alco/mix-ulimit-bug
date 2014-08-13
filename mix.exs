defmodule Bug.App.Mixfile do
  use Mix.Project

  def project do [
    app: :bug,
    version: "0.1.0",
    deps: deps
  ] end

  def application do
    []
  end

  defp deps do
    [{:test_dep, git: "test_dep"}]
  end
end
