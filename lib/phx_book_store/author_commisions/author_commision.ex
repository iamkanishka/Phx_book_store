defmodule PhxBookStore.AuthorCommisions.AuthorCommision do
  use Ecto.Schema
  import Ecto.Changeset

  schema "author_commisions" do


    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(author_commision, attrs) do
    author_commision
    |> cast(attrs, [])
    |> validate_required([])
  end
end
