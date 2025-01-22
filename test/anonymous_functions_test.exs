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

  test "closure1" do
    assert AnonymousFunctions.closure1() == 4
  end

  test "closure2" do
    assert AnonymousFunctions.closure2() == 42
  end

  test "clauses_guards1" do
    assert AnonymousFunctions.clauses_guards1() == 1
  end

  test "clauses_guards2" do
    # CompileError 是静态错误：Elixir 的编译器会在代码编译阶段发现匿名函数定义中参数数量（arity）不一致的问题，直接报错。因此，代码根本无法成功编译，AnonymousFunctions.clauses_guards2/0 无法执行。
    # assert_raise 捕捉的是运行时错误：它用于断言某段代码在运行时抛出的异常，而不是编译时的静态错误。
    # assert_raise(CompileError, fn -> AnonymousFunctions.clauses_guards2() end)
  end

  test "capture_operator1" do
    assert AnonymousFunctions.capture_operator1() == "true, true, false"
  end

  test "capture_operator2" do
    assert AnonymousFunctions.capture_operator2() == 5
  end

  test "capture_operator3" do
    assert AnonymousFunctions.capture_operator3() == 3
  end
end
