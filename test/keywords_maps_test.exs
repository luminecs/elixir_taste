defmodule KeywordsMapsTest do
  use ExUnit.Case
  doctest KeywordsMaps

  test "keyword list1" do
    assert String.split("1 2 3", " ") == ["1", "2", "3"]
    assert String.split("1  2  3", " ") == ["1", "", "2", "", "3"]
    # [trim: true]
    assert String.split("1  2  3", " ", trim: true) == ["1", "2", "3"]
    assert String.split("1  2  3", " ", trim: true, parts: 2) == ["1", " 2  3"]
  end
end
