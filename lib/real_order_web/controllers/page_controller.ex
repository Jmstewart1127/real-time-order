defmodule RealOrderWeb.PageController do
  use RealOrderWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
