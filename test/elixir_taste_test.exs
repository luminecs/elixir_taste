defmodule ElixirTasteTest do
  use ExUnit.Case
  doctest ElixirTaste

  test "greets the world" do
    assert ElixirTaste.hello() == :world
  end
end
