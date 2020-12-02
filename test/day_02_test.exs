defmodule Day02Test do
  use ExUnit.Case

  import AocUtils

  test "calculates the sample values correctly" do
    passwords =
      """
      1-3 a: abcde
      1-3 b: cdefg
      2-9 c: ccccccccc
      """
      |> split_lines

    assert Day02.part1(passwords) == 2
  end

  test "calculates day1 part 1 correctly" do
    passwords =
      "lib/fixtures/day02_fixture.txt"
      |> File.read!()
      |> split_lines

    assert Day02.part1(passwords) == 414
  end
end
