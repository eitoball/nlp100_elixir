defmodule Nlp100.Ch1.N04 do
  @doc """
  04. 元素記号
  "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."という文を単語に分解し，1, 5, 6, 7, 8, 9, 15, 16, 19番目の単語は先頭の1文字，それ以外の単語は先頭に2文字を取り出し，取り出した文字列から単語の位置（先頭から何番目の単語か）への連想配列（辞書型もしくはマップ型）を作成せよ．
  """
  @str "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."
  def call(str \\ @str) do
    first_letter = [1, 5, 6, 7, 8, 9, 15, 16, 19]
    str
    |> String.split(~r{[ .]})
    |> Enum.reject(&(&1 == ""))
    |> Enum.with_index
    |> Enum.map(fn ({w, i}) ->
      p = i + 1
      a = if(Enum.member?(first_letter, p), do: 1, else: 2)
      {String.slice(w, 0, a), p}
    end)
    |> Map.new
  end
end
