defmodule MachineTest do
  use ExUnit.Case
  import Machine

  setup do
    {:ok, [
        rotor_1: [mapping: 'EKMFLGDQVZNTOWYHXUSPAIBRCJ', turnover: ?Q],
        rotor_2: [mapping: 'AJDKSIRUXBLHWTMCQGZNPYFVOE', turnover: ?E],
        rotor_3: [mapping: 'BDFHJLCPRTXVZNYEIWGAKMUSQO', turnover: ?V],
      ]}
  end

  test "it encrypts correctly starting at AAA with no plugboard patches", context do
    rotors = [context[:rotor_3], context[:rotor_2], context[:rotor_1]]
    patches = []
    result = encrypt 'HELLOWORLD', rotors, patches, 'AAA'
    assert result == 'MFNCZBBFZM'
  end
end
