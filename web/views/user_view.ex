defmodule HelloWorld.UserView do
  use HelloWorld.Web, :view

  def gravatar_url(email) do
    "http://www.gravatar.com/avatar/" <> md5(email)
  end

  def gravatar_avatar(email) do
    raw "<img src='#{gravatar_url(email)}'>"
  end

  defp md5(string) do
    Base.encode16(:erlang.md5(string), case: :lower)
  end
end
