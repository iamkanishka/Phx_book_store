defmodule PhxBookStore.Authors.Author do
  use Ecto.Schema
  import Ecto.Changeset

  schema "authors" do


    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(author, attrs) do
    author
    |> cast(attrs, [])
    |> validate_required([])
  end
end
