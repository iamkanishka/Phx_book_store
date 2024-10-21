defmodule PhxBookStore.Authors.Author do
  use Ecto.Schema
  import Ecto.Changeset
  alias PhxBookStore.Books.Book
  alias PhxBookStore.AuthorCommisions.AuthorCommision

  schema "authors" do
    field :first_name, :string
    field :last_name, :string
    field :biography, :string

    has_many :commisions, AuthorCommision
    many_to_many :books, Book, join_through: "authors_books"
    timestamps(type: :utc_datetime)
  end



  @doc false
  def changeset(author, attrs) do
    author
    |> cast(attrs,  [:first_name, :last_name, :biography])
    |> validate_required( [:first_name, :last_name, :biography])
  end
end
