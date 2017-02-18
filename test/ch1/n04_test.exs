defmodule Nlp100.Ch1.N04Test do
  use ExUnit.Case, async: true

  test "symbol of element" do
    assert %{
      "H" => 1,
      "He" => 2,
      "Li" => 3,
      "Be" => 4,
      "B" => 5,
      "C" => 6,
      "N" => 7,
      "O" => 8,
      "F" => 9,
      "Ne" => 10,
      "Na" => 11,
      "Mi" => 12, # Mg
      "Al" => 13,
      "Si" => 14,
      "P" => 15,
      "S" => 16,
      "Cl" => 17,
      "Ar" => 18,
      "K" => 19,
      "Ca" => 20
    } == Nlp100.Ch1.N04.call
  end
end
