defmodule LeanpokerElixir do
  use Maru.Router
  alias LeanpokerElixir.Dispatcher

  params do
    requires :action, type: String
    optional :game_state, type: Map
  end

  post do
    Dispatcher.dispatch(params[:action], params[:game_state])
  end

  rescue_from :all do
    status 500
    "Server Error"
  end
end
