defmodule PhxBookStore.BookStores.BookStore do
  use Ecto.Schema
  import Ecto.Changeset

  schema "books_stores" do


    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(book_store, attrs) do
    book_store
    |> cast(attrs, [])
    |> validate_required([])
  end
end
