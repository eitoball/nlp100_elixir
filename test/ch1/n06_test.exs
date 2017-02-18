defmodule Nlp100.Ch1.N06Test do
  use ExUnit.Case

  @str1 "paraparaparaparadise"
  @str2 "paragraph"

  test "union" do
    r = Nlp100.Ch1.N06.union(@str1, @str2)
    [["p", "a"], ["a", "r"], ["s", "e"], ["p", "h"]]
    |> Enum.each(fn (b) -> assert MapSet.member?(r, b) end)
  end

  test "intersection" do
    r = Nlp100.Ch1.N06.intersection(@str1, @str2)
    [["p", "a"], ["a", "r"]]
    |> Enum.each(fn (b) -> assert MapSet.member?(r, b) end)
    [["s", "e"], ["p", "h"]]
    |> Enum.each(fn (b) -> refute MapSet.member?(r, b) end)
  end

  test "difference" do
    r = Nlp100.Ch1.N06.difference(@str1, @str2)
    [["s", "e"]]
    |> Enum.each(fn (b) -> assert MapSet.member?(r, b) end)
    [["p", "a"], ["a", "r"], ["p", "h"]]
    |> Enum.each(fn (b) -> refute MapSet.member?(r, b) end)
  end

  test "include \"se\"?" do
    assert Nlp100.Ch1.N06.member?(@str1, ["s", "e"])
    refute Nlp100.Ch1.N06.member?(@str2, ["s", "e"])
  end
end
