defmodule PhxBookStore.BookAuthors.BookAuthor do
  use Ecto.Schema
  import Ecto.Changeset

  alias PhxBookStore.Books.Book
  alias PhxBookStore.Authors.Author

  schema "books_authors" do
    belongs_to :book_id, Book
    belongs_to :author_id, Author
  end

  def changeset(book_author, attrs \\ %{}) do
    book_author
    |> cast(attrs, [:book_id, :author_id])
    |> validate_required([:book_id, :author_id])
    |> assoc_constraint(:book_id)
    |> assoc_constraint(:author_id)
    |> unique_constraint(:book_id)
    |> unique_constraint(:author_id)
    |> foreign_key_constraint(:book_id)
    |> foreign_key_constraint(:author_id)

  end
end
