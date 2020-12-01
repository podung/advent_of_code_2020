defmodule Day01Test do
  use ExUnit.Case

  import AocUtils

  test "calculates the sample values correctly" do
    assert Day01.part1([1721, 979, 366, 299, 675, 1456]) == 514_579
  end

  test "calculates day1 part 1 correctly" do
    expenses =
      "lib/fixtures/day01_fixture.txt"
      |> File.read!()
      |> parse_ints("\n")

    assert Day01.part1(expenses) == 633_216
  end
end
