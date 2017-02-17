defmodule Nlp100.Ch1.N02Test do
  use ExUnit.Case, async: true

  test "Pick letters each other of 2 strings" do
    assert "パタトクカシーー" == Nlp100.Ch1.N02.call
  end
end
