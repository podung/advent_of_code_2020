defmodule Day01 do
  def part1(input) do
    pairs = for i <- input, j <- input, do: {i, j}

    {i, j} =
      pairs
      |> Enum.find(fn {i, j} ->
        i + j == 2020
      end)

    i * j
  end
end
