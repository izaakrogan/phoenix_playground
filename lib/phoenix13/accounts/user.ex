defmodule Phoenix13.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Phoenix13.Accounts.User


  schema "users" do
    field :email, :string

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:email])
    |> validate_required([:email])
  end
end
