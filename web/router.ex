defmodule Mnt.Router do
  use Mnt.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Mnt do
    pipe_through :api
  end
end
