defmodule Nlp100.Ch1.N01 do
  @doc """
  01. 「パタトクカシーー」
「パタトクカシーー」という文字列の1,3,5,7文字目を取り出して連結した文字列を得よ．
  """
  def call(str \\ "パタトクカシーー") do
    Enum.map_join([1, 3, 5, 7], "", fn (i) -> String.at(str, i) end)
  end
end
