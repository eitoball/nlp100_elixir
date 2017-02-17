defmodule Nlp100.Ch1.N03Test do
  use ExUnit.Case, async: true

  test "Count words" do
    assert [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5, 8, 9, 7, 9] == Nlp100.Ch1.N03.call
  end
end
