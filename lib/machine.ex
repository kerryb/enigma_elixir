defmodule Machine do
  def encrypt([letter|message], rotors, patches, positions), do: [letter|encrypt(message, rotors, patches, positions)]
  def encrypt([], _, _, _), do: []
end
