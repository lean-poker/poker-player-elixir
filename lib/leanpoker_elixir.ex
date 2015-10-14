defmodule LeanpokerElixir do
  use Maru.Router
  alias Poison.Parser
  alias LeanpokerElixir.Dispatcher

  params do
    requires :action, type: String
    optional :game_state, type: String
  end

  match do
    Dispatcher.dispatch(params[:action], Parser.parse!(params[:game_state]||"{}"))
  end

  rescue_from :all do
    status 500
    "Server Error"
  end
end
