defmodule LeanpokerElixir do
  use Maru.Router
  alias Poison.Parser
  alias LeanpokerElixir.Dispatcher

  params do
    optional :action, type: String
    optional :game_state, type: String
  end

  match do
    action = params[:action]||"check"
    game_state = Parser.parse!(params[:game_state]||"{}")
    Dispatcher.dispatch(action, game_state)
  end

  rescue_from :all do
    status 500
    "Server Error"
  end
end
