defmodule Phoenix13.Discussions.Topic do
  use Ecto.Schema
  import Ecto.Changeset
  alias Phoenix13.Discussions.Topic


  schema "topics" do
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(%Topic{} = topic, attrs) do
    topic
    |> cast(attrs, [:title])
    |> validate_required([:title])
  end
end
