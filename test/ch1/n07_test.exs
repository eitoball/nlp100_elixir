defmodule Nlp100.Ch1.N07Test do
  use ExUnit.Case

  test "apply" do
    assert "12時の気温は22.4" == Nlp100.Ch1.N07.apply(12,"気温", 22.4)
  end
end
