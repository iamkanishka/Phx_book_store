defmodule PhxBookStore.AuthorCommisions.AuthorCommision do
  use Ecto.Schema
  import Ecto.Changeset
  alias PhxBookStore.Books.Book
  alias PhxBookStore.AuthorCommisions.Author


  schema "author_commisions" do
    field :commission_amount, :float
    has_many :book, Book
    belongs_to :author, Author
    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(author_commision, attrs) do
    author_commision
    |> cast(attrs, [])
    |> validate_required([])
  end
end
