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

  test "keyword list2" do
    assert [{:trim, true}, {:parts, 2}] == [trim: true, parts: 2]
  end

  test "key_import_function" do
    assert KeywordsMaps.key_import_function() == ["hello", "world"]
  end

  test "keyword list4" do
    list = [a: 1, b: 2]
    assert list ++ [c: 3] == [a: 1, b: 2, c: 3]
    assert [a: 0] ++ list = [a: 0, a: 1, b: 2]
    assert list[:a] == 1
    assert list[:b] == 2
  end
end
