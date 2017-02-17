defmodule Nlp100.Ch1.N01Test do
  use ExUnit.Case, async: true

  test "Pick 1st, 3rd, 5th, and 7th letters and join them" do
    assert "タクシー" == Nlp100.Ch1.N01.call
  end
end
