defmodule PhxBookStore.BookStores.BookStore do
  use Ecto.Schema
  import Ecto.Changeset

  alias PhxBookStore.Sellers.Seller
  alias PhxBookStore.Books.Book

  schema "books_stores" do
    field :name, :string
    field :address, :string
    field :city, :string
    field :state, :string
    field :zip_code, :string

    has_one :seller, Seller
  many_to_many :books, Book, join_through: "books_bookstores"

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(book_store, attrs) do
    book_store
    |> cast(attrs, [])
    |> validate_required([])
  end
end
