defmodule Plugboard do
  def translate(letter, [[letter, counterpart]|patches]), do: counterpart
  def translate(letter, [[counterpart, letter]|patches]), do: counterpart
  def translate(letter, [patch|patches]), do: translate(letter, patches)
  def translate(letter, []), do: letter
end
