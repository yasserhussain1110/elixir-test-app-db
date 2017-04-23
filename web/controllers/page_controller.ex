defmodule ElixirTestApp.PageController do
  use ElixirTestApp.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
