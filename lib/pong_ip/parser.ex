defmodule PongIp.Parser do
  @spec remote_ip(Plug.Conn.t()) :: String.t()
  def remote_ip(conn) do
    case Plug.Conn.get_req_header(conn, "x-forwarded-for") do
      [ip] -> ip
      _ -> to_string(:inet.ntoa(conn.remote_ip))
    end
  end
end
