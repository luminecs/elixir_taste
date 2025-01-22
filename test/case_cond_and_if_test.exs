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

  test "if1" do
    assert CaseCondAndIf.if1() == "This works!"
  end

  test "if2" do
    assert CaseCondAndIf.if2() == nil
  end

  test "if3" do
    assert CaseCondAndIf.if3() == "This will"
  end

  test "variable_scope1" do
    assert CaseCondAndIf.variable_scope1() == 1
  end

  test "variable_scope2" do
    assert CaseCondAndIf.variable_scope2() == 2
  end
end
