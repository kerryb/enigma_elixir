defmodule Rotor do
  def translate_left mapping, position do
    Enum.at(mapping, position) - ?A
  end
end
