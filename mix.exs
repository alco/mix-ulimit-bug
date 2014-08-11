defmodule Bug.App.Mixfile do
  use Mix.Project

  def project do [
    app: :bug,
    version: "0.1.0",
    deps: deps
  ] end

  # Configuration for the OTP application
  def application do [
    applications: ~w(inets gproc exmig exdbi_pgsql lager poolboy barrel jsex exlogger folsom cowboy decimex decimal validatex)a,
    mod: {Bug.App, []},
    env: env
  ] end

  def env do [
  ] end

  defp deps do [
      {:gproc,       github: "uwiger/gproc"},
      {:exmig,       github: "khia/exmig"},
      {:exdbi_pgsql, github: "exdbi/exdbi_pgsql"},
        {:epgsql,    github: "spawngrid/epgsql", override: true},
      {:lager,       github: "basho/lager"},
      {:poolboy,     github: "devinus/poolboy"},
      {:barrel,      github: "spawngrid/barrel"},
      {:jsex,        github: "talentdeficit/jsex"},
      {:exlogger,    github: "bexio/exlogger", branch: "hotfix/fig-logging"},
      {:decimex,     github: "yrashk/decimex"},
      {:folsom,      github: "boundary/folsom"},
      {:validatex,   github: "ElixirWerkz/validatex"},
      {:cowboy,      github: "spawngrid/cowboy", branch: "proxy", override: true}
  ] end
end
