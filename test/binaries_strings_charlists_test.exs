defmodule BinariesStringsCharlistsTest do
  use ExUnit.Case
  doctest BinariesStringsCharlists

  test "is_binary1" do
    assert BinariesStringsCharlists.is_binary1() == true
  end

  test "code_point1" do
    assert BinariesStringsCharlists.code_point1() == 97
  end

  test "code_point2" do
    assert BinariesStringsCharlists.code_point2() == 29579
  end

  test "unicode1" do
    assert BinariesStringsCharlists.unicode1() == true
  end

  test "unicode2" do
    assert BinariesStringsCharlists.unicode2() == 97
  end

  test "unicode3" do
    assert BinariesStringsCharlists.unicode3() == 6
  end

  test "unicode4" do
    assert BinariesStringsCharlists.unicode4() == 8
  end

  test "unicode5" do
    assert BinariesStringsCharlists.unicode5() == ["👩", "‍", "🚒"]
    assert BinariesStringsCharlists.unicode5() == ["👩", "\u200D", "🚒"]
  end
end
