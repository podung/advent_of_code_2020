defmodule AocUtils do
  def split_lines(input), do: String.split(input, "\n", trim: true)

  def parse_ints(input, delimiter \\ ",") do
    input
    |> String.trim()
    |> String.split(delimiter, trim: true)
    |> Enum.map(&String.to_integer/1)
  end
end
