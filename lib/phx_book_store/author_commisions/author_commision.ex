defmodule PhxBookStore.AuthorCommisions.AuthorCommision do
  use Ecto.Schema
  import Ecto.Changeset
  alias PhxBookStore.Books.Book
  alias PhxBookStore.AuthorCommisions.Author


  schema "author_commisions" do
    field :commission_amount, :integer
    belongs_to :book, Book
    belongs_to :author, Author
    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(author_commision, attrs) do
    author_commision
    |> cast(attrs, [:commission_amount, :book_id, :author_id])
    |> validate_required([:commission_amount, :book_id, :author_id])
    |> validate_number(:commission_amount, [greater_than_or_equal_to: 0])
    |> assoc_constraint(:book_id)
    |> assoc_constraint(:author_id)
    |> unique_constraint(:book_id)
    |> unique_constraint(:author_id)
    |> foreign_key_constraint(:book_id)
    |> foreign_key_constraint(:author_id)


  end
end
