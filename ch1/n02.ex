defmodule Nlp100.Ch1.N02 do
  @doc """
  02. 「パトカー」＋「タクシー」＝「パタトクカシーー」
  「パトカー」＋「タクシー」の文字を先頭から交互に連結して文字列「パタトクカシーー」を得よ．
  """
  def call(str1 \\ "パトカー", str2 \\ "タクシー") do
    [str1, str2]
    |> Enum.map(&String.to_charlist/1)
    |> List.zip
    |> Enum.map(&Tuple.to_list/1)
    |> Enum.join("")
  end
end
