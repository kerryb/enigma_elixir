defmodule RotorTest do
  use ExUnit.Case
  import Rotor

  # Test rotor mapping (BDAC):
  #   C <-> D
  #   A <-> C
  #   D <-> B
  #   B <-> A
  setup do
    {:ok, [mapping: 'BDAC']}
  end

  # Home position:
  #   3 <- D <- 3
  #   2 <- C <- 2
  #   1 <- B <- 1
  #   0 <- A <- 0
  test "translate_left maps positionally using the supplied letter mapping when in the home position", context do
    result = translate_left 1, context[:mapping], ?A # 1 -> B -> D -> 3
    assert result == 3
  end

  # Rotated to position C:
  #   3 <- B <- 3
  #   2 <- A <- 2
  #   1 <- D <- 1
  #   0 <- C <- 0
  test "translate_left maps positionally using the supplied letter mapping when rotated", context do
    result = translate_left 2, context[:mapping], ?C # 2 -> A -> B -> 3
    assert result == 3
  end

  test "translate_right maps positionally backwards using the supplied letter mapping when in the home position", context do
    result = translate_right 2, context[:mapping], ?A # 2 -> A -> C -> 3
    assert result == 3
  end
end
