defmodule Rotor do
  def translate_left(mapping, position, input), do: Enum.at(mapping, input) - ?A

  def translate_right(mapping, position, input), do: Enum.find_index(mapping, &(&1 - ?A == input))

  def rotate([head|tail]), do: tail ++ [head]
end
