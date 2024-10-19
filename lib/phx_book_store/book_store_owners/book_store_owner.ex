defmodule PhxBookStore.BookStoreOwners.BookStoreOwner do
  use Ecto.Schema
  import Ecto.Changeset

  schema "books_store_owners" do


    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(book_store_owner, attrs) do
    book_store_owner
    |> cast(attrs, [])
    |> validate_required([])
  end
end
