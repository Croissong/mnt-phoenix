defmodule Blog.PageView do
  use Blog.Web, :view

  def initial_state do
    Poison.encode!(%{test: "hi"})
  end
end
