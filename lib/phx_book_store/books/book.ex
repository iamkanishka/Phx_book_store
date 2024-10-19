defmodule PhxBookStore.Books.Book do
  use Ecto.Schema
  import Ecto.Changeset

  schema "books" do


    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(book, attrs) do
    book
    |> cast(attrs, [])
    |> validate_required([])
  end
end
