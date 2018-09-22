defmodule PongIpWeb.PongController do
  use PongIpWeb, :controller

  def pong(conn, params) do
    # require IEx; IEx.pry
    ip = to_string(:inet.ntoa(conn.remote_ip))
    text conn, ip
  end
end
