defmodule DailyJermaWeb.PageController do
  use DailyJermaWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
