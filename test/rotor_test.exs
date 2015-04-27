defmodule RotorTest do
  use ExUnit.Case
  import Rotor

  test "translate_left maps positionally using the supplied letter mapping" do
    result = translate_left 'BDAC', 1 # 1 -> B -> D -> 3
    assert result == 3
  end

  test "translate_right maps positionally backwards using the supplied letter mapping" do
    result = translate_right 'BDAC', 2 # 2 -> A -> C -> 3
    assert result == 3
  end

  test "rotate returns a mapping rotated one place forwards" do
    result = rotate 'BDAC'
    assert result == 'DACB'
  end

  test "reflect maps positionally using the supplied letter mapping" do
    result = reflect 'BADC', 1 # 1 -> B -> A -> 0
    assert result == 0
  end
end
