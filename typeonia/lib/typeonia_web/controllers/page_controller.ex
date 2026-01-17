defmodule TypeoniaWeb.PageController do
  use TypeoniaWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
