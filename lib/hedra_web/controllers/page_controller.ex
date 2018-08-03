defmodule HedraWeb.PageController do
  use HedraWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
