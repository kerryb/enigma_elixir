defmodule ReflectorTest do
  use ExUnit.Case
  import Reflector

  test "reflect maps positionally using the supplied letter mapping" do
    result = reflect 1, 'BADC' # 1 -> B -> A -> 0
    assert result == 0
  end
end
