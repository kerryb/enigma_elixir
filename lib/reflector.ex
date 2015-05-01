defmodule Reflector do
  defdelegate reflect(mapping, position), to: Rotor, as: :translate_left
end
