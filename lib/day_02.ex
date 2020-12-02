defmodule Day02 do
  def part1(input) do
    input
    |> Enum.map(&parse_line/1)
    |> Enum.map(&get_frequencies/1)
    |> Enum.reject(&violates_constraints/1)
    |> Enum.count()
  end

  defp parse_line(line) do
    [range_part, letter_part, password] = String.split(line, " ")

    [index1, index2] =
      range_part
      |> String.split("-")
      |> Enum.map(&String.to_integer/1)

    letter = String.slice(letter_part, 0..-2)

    {password, letter, index1, index2}
  end

  def get_frequencies({password, letter, index1, index2}) do
    frequencies =
      password
      |> String.graphemes()
      |> Enum.frequencies()

    {password, letter, index1, index2, Map.get(frequencies, letter)}
  end

  defp violates_constraints({_password, _letter, index1, index2, letter_count}) do
    letter_count < index1 || letter_count > index2
  end
end
