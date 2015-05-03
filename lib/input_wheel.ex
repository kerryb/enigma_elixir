defmodule InputWheel do
  def input(letter, mapping), do: Enum.find_index(mapping, &(&1 == letter))

  def output(position, mapping), do: Enum.at(mapping, position)
end
