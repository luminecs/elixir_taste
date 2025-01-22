defmodule AnonymousFunctionsTest do
  use ExUnit.Case
  doctest AnonymousFunctions

  test "anonymous_function1" do
    assert AnonymousFunctions.anonymous_function1() == 3
  end

  test "is_function1" do
    assert AnonymousFunctions.is_function1() == true
  end

  test "is_function2" do
    assert AnonymousFunctions.is_function2() == true
  end

  test "is_function3" do
    assert AnonymousFunctions.is_function3() == false
  end
end
