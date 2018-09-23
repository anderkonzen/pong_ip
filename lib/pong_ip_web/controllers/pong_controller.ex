defmodule PongIpWeb.PongController do
  use PongIpWeb, :controller

  def pong(conn, _params) do
    text conn, PongIp.Parser.remote_ip(conn)
  end
end
