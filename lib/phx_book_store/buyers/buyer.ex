defmodule PhxBookStore.Buyers.Buyer do
  alias PhxBookStore.Books.Book
  use Ecto.Schema
  import Ecto.Changeset

  schema "buyers" do
    field :first_name, :string
    field :last_name, :string
    field :email, :string
    field :address, :string
    field :city, :string
    field :state, :string
    field :zip_code, :string

    has_many :orders, Order
   timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(buyer, attrs) do
    buyer
    |> cast(attrs, [:first_name, :last_name, :email, :address, :city, :state, :zip_code])
    |> validate_required([:first_name, :last_name, :email, :address, :city, :state, :zip_code])
  end
end
