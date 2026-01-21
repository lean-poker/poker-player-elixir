defmodule PokerPlayerElixirWeb.PlayerControllerTest do
  use PokerPlayerElixirWeb.ConnCase

  test "GET / returns healthy status", %{conn: conn} do
    conn = get(conn, ~p"/")
    assert json_response(conn, 200) == "Healthy"
  end

  test "POST / with action=version returns version", %{conn: conn} do
    conn = post(conn, ~p"/", %{"action" => "version"})
    assert json_response(conn, 200) == "0.0.1"
  end
end
