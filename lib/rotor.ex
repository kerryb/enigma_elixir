defmodule Rotor do
  def translate_left(mapping, position), do: Enum.at(mapping, position) - ?A

  defdelegate reflect(mapping, position), to: __MODULE__, as: :translate_left

  def translate_right(mapping, position), do: Enum.find_index(mapping, &(&1 - ?A == position))

  def rotate([head|tail]), do: tail ++ [head]
end
