defmodule Rotor do
  def translate_left input, mapping, position do
    size = Enum.count mapping
    input
    |> rotated_input(position, size)
    |> translate_left(mapping)
    |> rotated_output(position, size)
  end
  defp translate_left(input, mapping), do: Enum.at(mapping, input) - ?A
  defp rotated_input(input, position, size), do: input + size - (position - ?A) |> rem(size)
  defp rotated_output(output, position, size), do: output + (position - ?A) |> rem(size)

  def translate_right(input, mapping, position), do: Enum.find_index(mapping, &(&1 - ?A == input))
end
