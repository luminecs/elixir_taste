defmodule KeywordsMaps do
  @moduledoc """
  Keyword list and maps
  """
  
  def key_import_function do
    import String, only: [split: 1, split: 2]
    split("hello world")
  end
end
