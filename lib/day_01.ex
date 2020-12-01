defmodule Day01 do
  def part1(input) do
    first = List.first(input)

    second =
      input
      |> Enum.find(fn x ->
        x + first == 2020
      end)

    first * second
  end
end
