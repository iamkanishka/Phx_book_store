defmodule PhxBookStore.Sellers.Seller do
  use Ecto.Schema
  import Ecto.Changeset

  schema "sellers" do
    field :name, :string
    field :contact_number, :string
    field :email, :string
    field :role, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(seller, attrs) do
    seller
    |> cast(attrs, [])
    |> validate_required([])
  end
end
