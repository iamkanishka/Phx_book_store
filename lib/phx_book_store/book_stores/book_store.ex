defmodule PhxBookStore.BookStores.BookStore do
  use Ecto.Schema
  import Ecto.Changeset

  alias PhxBookStore.Sellers.Seller

  schema "books_stores" do
    field :name, :string
    field :address, :string
    field :city, :string
    field :state, :string
    field :zip_code, :string

    belongs_to :seller, Seller

    many_to_many :books, PhxBookStore.BookBookStore.BookBookStore,
      join_through: "books_bookstores"

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(book_store, attrs) do
    book_store
    |> cast(attrs, [:name, :address, :city, :state, :zip_code, :seller_id])
    |> validate_required([:name, :address, :city, :state, :zip_code, :seller_id])
    |> unique_constraint(:seller_id)
    |> foreign_key_constraint(:seller_id)
    |> validate_length(:zip_code, min: 6, max: 10)
  end
end
