defmodule PhxBookStore.Books.Book do
  use Ecto.Schema
  import Ecto.Changeset
  alias PhxBookStore.Authors.Author

  schema "books" do
    field :title, :string
    field :isbn, :string
    field :price, :float
    field :description, :string
    field :thumbnail, :string
    field :publisher, :string
    field :published_on, :date

    many_to_many :authors, Author, join_through: "authors_books"

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(book, attrs) do
    book
    |> cast(attrs, [])
    |> validate_required([])
  end
end
