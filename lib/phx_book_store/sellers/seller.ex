defmodule PhxBookStore.Sellers.Seller do
  use Ecto.Schema
  import Ecto.Changeset

  alias PhxBookStore.BookStores.BookStore

  schema "sellers" do
    field :name, :string
    field :contact_number, :string
    field :email, :string
    field :role, :string

    has_one :books_store, BookStore

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(seller, attrs) do
    seller
    |> cast(attrs, [])
    |> validate_required([])
  end
end
