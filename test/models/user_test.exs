defmodule HelloWorld.UserTest do
  use HelloWorld.ModelCase

  alias HelloWorld.User

  @valid_attrs %{bio: "some content", email: "igor@gmail.com", name: "some content"}
  @empty_attrs %{}

  @invalid_mail %{bio: "some content", email: "mail_without_at_sign", name: "some content"}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @empty_attrs)
    refute changeset.valid?
  end

  test "changeset with invalid email" do
    changeset = User.changeset(%User{}, @invalid_mail)
    refute changeset.valid?
  end
end
