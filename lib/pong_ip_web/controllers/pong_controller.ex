defmodule PongIpWeb.PongController do
  use PongIpWeb, :controller

  def pong(conn, params) do
    IO.puts "remote IP"
    IO.inspect conn.remote_ip
    IO.puts "headers"
    IO.inspect conn.req_headers
    # require IEx; IEx.pry
    ip = to_string(:inet.ntoa(conn.remote_ip))
    text conn, ip
  end
end
