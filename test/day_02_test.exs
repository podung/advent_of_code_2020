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

  test "calculates day2 part 1 correctly" do
    passwords =
      "lib/fixtures/day02_fixture.txt"
      |> File.read!()
      |> split_lines

    assert Day02.part1(passwords) == 414
  end

  test "calculates the sample values correctly for part2 correctly" do
    passwords =
      """
      1-3 a: abcde
      1-3 b: cdefg
      2-9 c: ccccccccc
      """
      |> split_lines

    assert Day02.part2(passwords) == 1
  end

  test "calculates day2 part 2 correctly" do
    passwords =
      "lib/fixtures/day02_fixture.txt"
      |> File.read!()
      |> split_lines

    assert Day02.part2(passwords) == 413
  end
end
