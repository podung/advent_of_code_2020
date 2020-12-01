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

  test "calculates the sample values correctly for part 2" do
    assert Day01.part2([1721, 979, 366, 299, 675, 1456]) == 241_861_950
  end

  test "calculates day1 part 2 correctly" do
    expenses =
      "lib/fixtures/day01_fixture.txt"
      |> File.read!()
      |> parse_ints("\n")

    assert Day01.part2(expenses) == 68_348_924
  end
end
