defmodule Nlp100.Ch1.N06 do
  @doc """
  06. 集合
  "paraparaparadise"と"paragraph"に含まれる文字bi-gramの集合を，それぞれ, XとYとして求め，XとYの和集合，積集合，差集合を求めよ．さらに，'se'というbi-gramがXおよびYに含まれるかどうかを調べよ．
  """

  def union(str1, str2) do
    MapSet.union(to_bigram_set(str1), to_bigram_set(str2))
  end

  def intersection(str1, str2) do
    MapSet.intersection(to_bigram_set(str1), to_bigram_set(str2))
  end

  def difference(str1, str2) do
    MapSet.difference(to_bigram_set(str1), to_bigram_set(str2))
  end

  def member?(str, bigram) do
    to_bigram_set(str) |> MapSet.member?(bigram)
  end

  defp to_bigram_set(str) do
    str |> Nlp100.Ch1.N05.by_letter |> MapSet.new
  end
end
