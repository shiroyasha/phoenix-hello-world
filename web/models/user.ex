defmodule HelloWorld.User do
  use HelloWorld.Web, :model

  schema "users" do
    field :name, :string
    field :email, :string
    field :bio, :string

    timestamps
  end

  @required_fields ~w(name email bio)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If `params` are nil, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
    |> validate_length(:bio, min: 2)
    |> validate_length(:bio, max: 160)
    |> validate_format(:email, ~r/@/)
  end
end
