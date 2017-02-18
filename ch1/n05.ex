defmodule Nlp100.Ch1.N05 do
  @doc """
  05. n-gram
  与えられたシーケンス（文字列やリストなど）からn-gramを作る関数を作成せよ．この関数を用い，"I am an NLPer"という文から単語bi-gram，文字bi-gramを得よ．
  """
  @str "I am an NLPer"
  def by_letter(str \\ @str) do
    str
    |> String.codepoints()
    |> Enum.chunk(2, 1)
  end

  def by_word(str \\ @str) do
    str
    |> String.split()
    |> Enum.chunk(2, 1)
  end
end
