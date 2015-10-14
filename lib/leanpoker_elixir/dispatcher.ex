defmodule LeanpokerElixir.Dispatcher do
  alias LeanpokerElixir.Player

  def dispatch(action, game_state) do
    case action do
      "version" -> Player.version()
      "bet_request" -> Player.bet_request(game_state)
      "showdown" -> Player.showdown(game_state)
      _ -> ""
    end
  end
end
