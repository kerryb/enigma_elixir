defmodule Rotor do
  def translate_left mapping, position do
    Enum.at(mapping, position) - ?A
  end

  def translate_right mapping, position do
    Enum.find_index mapping, fn(c) -> c - ?A == position end
  end
end
