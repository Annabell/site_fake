defmodule PhxTesteWeb.PostListLive do
  use Phoenix.LiveView

  alias PhxTesteWeb.Posts

  def mount(session, socket) do
    posts = if connected?(socket), do: Posts.list_posts, else: []

    assigns = [
      conn: socket,
      posts: posts
    ]

    {:ok, assign(socket, assigns)}
  end

  def render(assigns) do
    PhxTesteWeb.PostView.render("posts.html", assigns)
  end
end
