defmodule Nlp100.Ch1.N03 do
  @doc """
  03. 円周率
  "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."という文を単語に分解し，各単語の（アルファベットの）文字数を先頭から出現順に並べたリストを作成せよ．
  """
  @str "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."
  def call(str \\ @str) do
    str
    |> String.split(~r{[ ,.]})
    |> Enum.reject(&(&1 == ""))
    |> Enum.map(&String.length/1)
  end
end
