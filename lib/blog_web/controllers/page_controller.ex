defmodule BlogWeb.PageController do
  use BlogWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def users(conn, _params) do
    users = [
      %{id: 1, name: "Alice", age: 30},
      %{id: 2, name: "Bob", age: 31},
      %{id: 3, name: "Charlie", age: 32}
    ]

    json(conn, %{users: users})
  end
end
