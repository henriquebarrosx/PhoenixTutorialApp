defmodule TutorialAppWeb.PageController do
  use TutorialAppWeb, :controller

  def home(conn, _params) do
    render(conn, :home, layout: false)
  end

  def greet(conn, _params) do
    html(conn, "Greet, visitor")
  end

  def goodbye(conn, _params) do
    html(conn, "Goodbye, visitor")
  end
end
