defmodule AnonymousFunctions do
  @moduledoc """
  Demo for `Anonymous functions`.
  """

  def anonymous_function1 do
    add = fn a, b -> a + b end
    add.(1, 2)
  end

  def is_function1 do
    add = fn a, b -> a + b end
    is_function(add)
  end

  #  check if add is a function that expects exactly 2 arguments
  def is_function2 do
    add = fn a, b -> a + b end
    is_function(add, 2)
  end

  #  check if add is a function that expects exactly 1 arguments
  def is_function3 do
    add = fn a, b -> a + b end
    is_function(add, 1)
  end

  def closure1 do
    add = fn a, b -> a + b end
    double = fn a -> add.(a, a) end
    double.(2)
  end

  def closure2 do
    x = 42
    (fn -> x = 0 end).()
    x
  end

  def clauses_guards1 do
    f = fn
      x, y when x > 0 -> x + y
      x, y -> x * y
    end

    f.(1, 3) + f.(-1, 3)
  end

  #  def clauses_guards2 do
  #    f = fn
  #      x, y when x > 0 -> x + y
  #      x, y, z -> x * y + z
  #    end
  #
  #    f.(1, 3)
  #  end

  def capture_operator1 do
    fun = &is_atom/1
    "#{is_function(fun)}, #{fun.(:hello)}, #{fun.(123)}"
  end

  def capture_operator2 do
    fun = &String.length/1
    fun.("hello")
  end

  def capture_operator3 do
    add = &+/2
    add.(1, 2)
  end

  def capture_operator4 do
    is_arity_2 = fn fun -> is_function(fun, 2) end
    is_arity_2.(&+/2)
  end

  def capture_operator5 do
    is_arity_2 = &is_function(&1, 2)
    is_arity_2.(&+/2)
  end

  def capture_operator6 do
    # fn x -> x + 1 end
    fun = &(&1 + 1)
    fun.(1)
  end

  def capture_operator7 do
    fun = &"Good #{&1}"
    fun.("morning")
  end
end
