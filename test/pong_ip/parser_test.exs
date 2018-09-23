defmodule PongIp.ParserTest do
  use ExUnit.Case
  use Phoenix.ConnTest

  test "req headers have x-forwarded-for" do
    ip = "201.12.34.66"

    conn =
      build_conn()
      |> Plug.Conn.put_req_header("x-forwarded-for", ip)

    assert ip == PongIp.Parser.remote_ip(conn)
  end

  test "req headers do not have x-forwarded-for" do
    inet_address = {151, 236, 219, 228}

    conn = %{build_conn() | remote_ip: inet_address}

    assert "151.236.219.228" == PongIp.Parser.remote_ip(conn)
  end
end
