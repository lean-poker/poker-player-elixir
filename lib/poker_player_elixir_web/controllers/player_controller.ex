defmodule PokerPlayerElixirWeb.PlayerController do
  use PokerPlayerElixirWeb, :controller
  alias PokerPlayerElixirWeb.Player

  def show(conn, _params) do
    json(conn, "Healthy")
  end

  def play(conn, %{"action" => "version"} = _params) do
    json(conn, Player.version())
  end

  def play(conn, %{"action" => "bet_request"} = params) do
    {:ok, game_state} = Jason.decode(params["game_state"])
    json(conn, Player.bet_request(game_state))
  end

  def play(conn, %{"action" => "showdown"} = params) do
    {:ok, game_state} = Jason.decode(params["game_state"])

    json(conn, Player.showdown(game_state))
  end
end
