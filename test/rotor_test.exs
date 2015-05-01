defmodule RotorTest do
  use ExUnit.Case
  import Rotor

  # Test rotor mapping (home position):
  #   0 <- B <- A <- 0
  #   1 <- D <- B <- 1
  #   2 <- A <- C <- 2
  #   3 <- C <- D <- 3

  setup do
    {:ok, [mapping: 'BDAC']}
  end

  test "translate_left maps positionally using the supplied letter mapping when in the home position", context do
    result = translate_left context[:mapping], 'A', 1 # 1 -> B -> D -> 3
    assert result == 3
  end

  test "translate_right maps positionally backwards using the supplied letter mapping when in the home position", context do
    result = translate_right context[:mapping], 'A', 2 # 2 -> A -> C -> 3
    assert result == 3
  end

  test "rotate returns a mapping rotated one place forwards", context do
    result = rotate context[:mapping]
    assert result == 'DACB'
  end
end
