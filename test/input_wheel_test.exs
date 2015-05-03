defmodule InputWheelTest do
  use ExUnit.Case
  import InputWheel

  test "input returns the position corresponding to a letter" do
    result = input ?C, 'ABCD'
    assert result == 2
  end

  test "output returns the letter corresponding to a position" do
    result = output 3, 'ABCD'
    assert result == ?D
  end
end
