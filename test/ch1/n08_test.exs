defmodule Nlp100.Ch1.N08Test do
  use ExUnit.Case

  test "cipher" do
    assert "Hvool, dliow!" == Nlp100.Ch1.N08.cipher("Hello, world!")
  end

  test "decipher" do
    assert "Hello, world!" == Nlp100.Ch1.N08.decipher("Hvool, dliow!")
  end
end
