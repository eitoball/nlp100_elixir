defmodule Nlp100.Mixfile do
  use Mix.Project

  def project do
    [app: :nlp100,
     version: "0.0.1",
     elixir: "~> 1.4",
     elixirc_paths: ["ch1", "ch2"]]
  end
end
