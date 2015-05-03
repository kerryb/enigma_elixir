defmodule Reflector do
  def reflect(input, mapping), do: Rotor.translate_left(input, mapping, ?A)
end
