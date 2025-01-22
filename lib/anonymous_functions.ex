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
end
