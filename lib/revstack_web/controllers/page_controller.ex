defmodule RevstackWeb.PageController do
  use RevstackWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
