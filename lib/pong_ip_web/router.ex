defmodule PongIpWeb.Router do
  use PongIpWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PongIpWeb do
    pipe_through :api

    get "/", PongController, :pong
  end
end
