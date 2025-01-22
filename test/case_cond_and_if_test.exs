defmodule CaseCondAndIfTest do
  use ExUnit.Case
  doctest CaseCondAndIf

  test "case1" do
    assert CaseCondAndIf.case1() == "This clause will match and bind x to 2 in this clause"
  end

  test "case2" do
    assert CaseCondAndIf.case2() == "Will match"
  end

  test "case3" do
    assert CaseCondAndIf.case3() == "Will match"
  end

  test "case4" do
    assert CaseCondAndIf.case4() == "Got 1"
  end

  test "case5" do
    assert_raise(CaseClauseError, fn -> CaseCondAndIf.case5() end)
  end
end
