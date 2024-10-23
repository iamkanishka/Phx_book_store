defmodule PhxBookStore.BookStores.BookStore do
  use Ecto.Schema
  import Ecto.Changeset

  alias PhxBookStore.Sellers.Seller
  alias PhxBookStore.Books.Book
  alias PhxBookStore.Buyers.Buyer

  schema "books_stores" do
    field :name, :string
    field :address, :string
    field :city, :string
    field :state, :string
    field :zip_code, :string

    belongs_to :seller, Seller
    many_to_many :books, Book, join_through: "books_bookstores"


    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(book_store, attrs) do
    book_store
    |> cast(attrs, [:name, :address, :city, :state, :zip_code, :seller_id])
    |> validate_required([:name, :address, :city, :state, :zip_code, :seller_id])
  end
end
