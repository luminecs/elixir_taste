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
end
