defmodule TypeoniaWeb.PageController do
  use TypeoniaWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
    # live_render(conn, TypeoniaWeb.HomeLive)
  end
end
