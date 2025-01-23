defmodule BinariesStringsCharlistsTest do
  use ExUnit.Case
  doctest BinariesStringsCharlists

  test "is_binary1" do
    assert BinariesStringsCharlists.is_binary1() == true
  end
end
