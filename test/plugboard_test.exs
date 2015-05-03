defmodule PlugboardTest do
  use ExUnit.Case
  import Plugboard

  test "translate swaps letters that have been patched together" do
    result = translate ?B, ['BG', 'PJ']
    assert result == ?G
  end

  test "translate swaps patched pairs in both directions" do
    result = translate ?J, ['BG', 'PJ']
    assert result == ?P
  end

  test "translate leaves other letters unchanged" do
    result = translate ?A, ['BG', 'PJ']
    assert result == ?A
  end
end
