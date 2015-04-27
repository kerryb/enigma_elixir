defmodule RotorTest do
  use ExUnit.Case
  import Rotor

  test "it translates right-to-left" do
    result = translate_left 'BDAC', 1 # 1 -> B -> D -> 3
    assert result == 3
  end

  test "it translates left-to-right" do
    result = translate_right 'BDAC', 2 # 2 -> A -> C -> 3
    assert result == 3
  end
end
