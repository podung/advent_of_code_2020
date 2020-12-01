defmodule Day01 do
  def part1(input) do
    pairs = for x <- input, y <- input, do: {x, y}

    {x, y} =
      pairs
      |> Enum.find(fn {x, y} ->
        x + y == 2020
      end)

    x * y
  end

  def part2(input) do
    pairs = for x <- input, y <- input, z <- input, do: {x, y, z}

    {x, y, z} =
      pairs
      |> Enum.find(fn {x, y, z} ->
        x + y + z == 2020
      end)

    x * y * z
  end
end
