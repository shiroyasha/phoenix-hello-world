defmodule HelloWorld.PageController do
  use HelloWorld.Web, :controller

  plug :action

  def index(conn, _params) do
    render conn, "index.html"
  end
end
