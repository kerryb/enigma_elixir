defmodule Rotor do
  def translate_left mapping, position do
    Enum.at(mapping, position) - ?A
  end

  def reflect mapping, position do
    translate_left mapping, position
  end

  def translate_right mapping, position do
    Enum.find_index mapping, &(&1 - ?A == position)
  end

  def rotate [head|tail] do
    tail ++ [head]
  end
end
