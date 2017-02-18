defmodule Nlp100.Ch1.N08 do
  @doc """
  08. 暗号文
  与えられた文字列の各文字を，以下の仕様で変換する関数cipherを実装せよ．

  英小文字ならば(219 - 文字コード)の文字に置換
  その他の文字はそのまま出力
  この関数を用い，英語のメッセージを暗号化・復号化せよ．
  """
  def cipher(str) do
    str
    |> String.to_charlist
    |> Enum.map(fn (c) ->
      if Enum.member?(?a..?z, c), do: 219 - c, else: c
    end)
    |> List.to_string
  end

  def decipher(str) do
    str
    |> String.to_charlist
    |> Enum.map(fn (c) ->
      if Enum.member?((219 - ?a)..(219 - ?z), c), do: 219 - c, else: c
    end)
    |> List.to_string
  end
end
