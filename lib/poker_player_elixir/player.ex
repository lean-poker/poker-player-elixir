defmodule PokerPlayerElixirWeb.Player do
  @version "0.0.1"
  def version(), do: @version

  def bet_request(_game_state) do
    0
  end

  def showdown(_game_state) do
    ""
  end
end
