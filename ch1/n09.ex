defmodule Nlp100.Ch1.N09 do
  @doc """
  09. Typoglycemia
  スペースで区切られた単語列に対して，各単語の先頭と末尾の文字は残し，それ以外の文字の順序をランダムに並び替えるプログラムを作成せよ．ただし，長さが４以下の単語は並び替えないこととする．適当な英語の文（例えば"I couldn't believe that I could actually understand what I was reading : the phenomenal power of the human mind ."）を与え，その実行結果を確認せよ．
  """
  def typoglycemia(str) do
    str
    |> String.split(~r{[ ]})
    |> Enum.map(fn (w) ->
      if String.length(w) <= 4 do
        w
      else
        m = String.slice(w, 1, String.length(w) - 2)
        m = String.codepoints(m)
        |> Enum.take_random(String.length(m))
        |> List.insert_at(0, String.first(w))
        |> List.insert_at(-1, String.last(w))
        |> Enum.join("")
      end
    end)
    |> Enum.join(" ")
  end
end
