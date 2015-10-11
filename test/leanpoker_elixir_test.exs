defmodule LeanpokerElixirTest do
  use ExUnit.Case
  use Maru.Test, for: LeanpokerElixir

  test "/" do
    assert %Plug.Conn{} = conn(:get, "/?action=check") |> make_response
  end

end
