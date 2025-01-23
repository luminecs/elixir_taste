defmodule BinariesStringsCharlists do
  @moduledoc """
  Binaries, strings, and charlists
  """

  def is_binary1 do
    string = "hello"
    is_binary(string)
  end

  def code_point1 do
    ?a
  end

  def code_point2 do
    ?王
  end

  def unicode1 do
    "\u0061" == "a"
  end

  def unicode2 do
    0x0061 = 97 = ?a
  end

  def unicode3 do
    String.length("hello王")
  end

  def unicode4 do
    byte_size("hello王")
  end

  def unicode5 do
    String.codepoints("👩‍🚒")
  end

  def unicode6 do
    String.graphemes("👩‍🚒")
  end

  def unicode7 do
    String.length("👩‍🚒")
  end

  def unicode8 do
    "hello" <> <<0>>
  end

  def unicode9 do
    IO.inspect("hello王", binaries: :as_binaries)
  end

  def bitstring1 do
    <<42>> == <<42::8>>
  end

  def bitstring2 do
    # 0011
    <<3::4>>
  end

  def bitstring3 do
    <<0::1, 0::1, 1::1, 1::1>> == <<3::4>>
  end

  def bitstring4 do
    <<1>> == <<257>>
  end
end
