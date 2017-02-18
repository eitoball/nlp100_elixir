defmodule Nlp100.Ch1.N05Test do
  use ExUnit.Case, async: true

  test "bi-gram by letter" do
    assert [
      ["I", " "],
      [" ", "a"],
      ["a", "m"],
      ["m", " "],
      [" ", "a"],
      ["a", "n"],
      ["n", " "],
      [" ", "N"],
      ["N", "L"],
      ["L", "P"],
      ["P", "e"],
      ["e", "r"]
    ] == Nlp100.Ch1.N05.by_letter()
  end

  test "bi-gram by word" do
    assert [
      ["I", "am"],
      ["am", "an"],
      ["an", "NLPer"]
    ] == Nlp100.Ch1.N05.by_word()
  end
end
