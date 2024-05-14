defmodule PokerPlayerElixirWeb.Router do
  use PokerPlayerElixirWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PokerPlayerElixirWeb do
    pipe_through :api

    get "/", PlayerController, :show
    post "/", PlayerController, :play
  end
end
