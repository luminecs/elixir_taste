defmodule CaseCondAndIf do
  @moduledoc """
  Demo about `case`, `cond` and `if`.
  """

  def case1 do
    case {1, 2, 3} do
      {4, 5, 6} -> "This clause won't match"
      {1, x, 3} -> "This clause will match and bind x to #{x} in this clause"
      _ -> "This clause would match any value"
    end
  end

  def case2 do
    x = 1

    case 10 do
      ^x -> "Won't match"
      _ -> "Will match"
    end
  end

  def case3 do
    case {1, 2, 3} do
      {1, x, 3} when x > 0 -> "Will match"
      _ -> "Would match, if guard condition were not satisfied"
    end
  end

  def case4 do
    case 1 do
      x when hd(1) -> "Won't match"
      x -> "Got #{x}"
    end
  end

  def case5 do
    case :ok do
      :error -> "Won't match"
    end
  end

  def if1 do
    if true do
      "This works!"
    end
  end

  def if2 do
    if false do
      "This will never be seen"
    end
  end

  def if3 do
    if nil do
      "This won't be seen"
    else
      "This will"
    end
  end

  def variable_scope1 do
    x = 1

    if true do
      # 2
      x = x + 1
    end

    # 1
    x
  end

  def variable_scope2 do
    x = 1

    # 2
    x =
      if true do
        x + 1
      else
        x
      end
  end
end
