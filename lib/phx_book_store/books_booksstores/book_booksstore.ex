defmodule PhxBookStore.BookBookStore.BookBookStore do
  use Ecto.Schema
  import Ecto.Changeset

  alias PhxBookStore.Books.Book
  alias PhxBookStore.BookStores.BookStore

  schema "books_books_stores" do
    belongs_to :book_id, Book
    belongs_to :book_store_id, BookStore
  end

  def changeset(books_books_stores, attrs \\ %{}) do
    books_books_stores
    |> cast(attrs, [:book_id, :book_store_id])
    |> validate_required([:book_id, :book_store_id])
    |> assoc_constraint(:book_id)
    |> assoc_constraint(:book_store_id)
    |> unique_constraint(:book_id)
    |> unique_constraint(:book_store_id)
    |> foreign_key_constraint(:book_id)
    |> foreign_key_constraint(:book_store_id)
  end

end
