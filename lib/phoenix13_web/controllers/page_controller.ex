defmodule Phoenix13Web.PageController do
  use Phoenix13Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
