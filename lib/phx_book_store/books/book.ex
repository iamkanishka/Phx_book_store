defmodule PhxBookStore.Books.Book do
  use Ecto.Schema
  import Ecto.Changeset
  alias PhxBookStore.Authors.Author
  alias PhxBookStore.BookStores.BookStore

  schema "books" do
    field :title, :string
    field :isbn, :string
    field :price, :integer
    field :description, :string
    field :thumbnail, :string
    field :publisher, :string
    field :published_on, :date

    many_to_many :authors, Author, join_through: "authors_books"
    many_to_many :books_stores, BookStore, join_through: "books_bookstores"

    timestamps(type: :utc_datetime)
  end



  @doc false
  def changeset(book, attrs) do
    book
    |> cast(attrs,  [:title, :isbn, :price, :description, :thumbnail, :publisher, :published_on])
    |> validate_required( [:title, :isbn, :price, :description, :thumbnail, :publisher, :published_on])

  end
end
