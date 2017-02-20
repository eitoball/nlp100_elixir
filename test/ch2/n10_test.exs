defmodule Nlp100.Ch2.N10Test do
  use ExUnit.Case, async: true

  test "count lines" do
    file = "hightemp.txt"
    { out, 0 } = System.cmd("wc", ["-l", "hightemp.txt"])
    n = out |> String.trim |> String.split |> List.first |> String.to_integer
    assert n == Nlp100.Ch2.N10.call(file)
  end
end
