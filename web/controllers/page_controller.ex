defmodule Metrix.PageController do
  use Metrix.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
