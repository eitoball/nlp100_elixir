defmodule Nlp100.Ch1.N00Test do
  use ExUnit.Case, async: true

  test "\"stressed\" is reversed" do
    assert "desserts", Nlp100.Ch1.N00.call
  end
end
