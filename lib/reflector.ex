defmodule Reflector do
  def reflect(mapping, input), do: Rotor.translate_left(mapping, 'A', input)
end
