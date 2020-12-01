defmodule Day01Test do
  use ExUnit.Case

  import AocUtils

  test "calculates the sample values correctly" do
    assert Day01.part1([1721, 979, 366, 299, 675, 1456]) == 514_579
  end
end
