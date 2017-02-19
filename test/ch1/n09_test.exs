defmodule Nlp100.Ch1.N09Test do
  use ExUnit.Case

  @str "I couldn't believe that I could actually understand what I was reading : the phenomenal power of the human mind ."
  test "typoglycemia" do
    r = Nlp100.Ch1.N09.typoglycemia(@str)
    assert Regex.match?(~r{^I c......t b.....e that I c...d a......y }, r)
  end
end
