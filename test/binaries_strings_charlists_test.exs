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

  test "unicode6" do
    assert BinariesStringsCharlists.unicode6() == ["👩‍🚒"]
  end

  test "unicode7" do
    assert BinariesStringsCharlists.unicode7() == 1
  end

  test "unicode8" do
    assert BinariesStringsCharlists.unicode8() == <<104, 101, 108, 108, 111, 0>>
  end

  test "unicode9" do
    assert BinariesStringsCharlists.unicode9() == <<104, 101, 108, 108, 111, 231, 142, 139>>
  end

  test "bitstring1" do
    assert BinariesStringsCharlists.bitstring1() == true
  end

  test "bitstring2" do
    assert BinariesStringsCharlists.bitstring2() == <<3::size(4)>>
  end

  test "bitstring3" do
    assert BinariesStringsCharlists.bitstring3() == true
  end

  test "bitstring4" do
    assert BinariesStringsCharlists.bitstring4() == true
  end

  test "binary1" do
    assert is_bitstring(<<3::4>>) == true
    assert is_binary(<<3::4>>) == false
    assert is_bitstring(<<0, 255, 42>>) == true
    assert is_binary(<<0, 255, 42>>) == true
    assert is_binary(<<42::16>>) == true
  end

  test "binary2" do
    <<0, 1, x>> = <<0, 1, 2>>
    assert x = 2

    <<0, 1, x::binary>> = <<0, 1, 2, 3>>
    assert <<2, 3>>

    <<head::binary-size(2), rest::binary>> = <<0, 1, 2, 3>>
    assert head == <<0, 1>>
    assert rest == <<2, 3>>
  end

  test "binary3" do
    assert is_binary("hello") == true
    assert is_binary(<<239, 191, 19>>) == true
    assert String.valid?(<<239, 191, 19>>) == false
    assert "a" <> "ha" == "aha"
    assert <<0, 1>> <> <<2, 3>> == <<0, 1, 2, 3>>
  end

  test "binary4" do
    <<head, rest::binary>> = "banana"
    assert head == ?b == true
    assert rest == "anana"
  end
end
