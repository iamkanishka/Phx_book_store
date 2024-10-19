defmodule PhxBookStore.Buyers.Buyer do
  use Ecto.Schema
  import Ecto.Changeset

  schema "buyers" do


    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(buyer, attrs) do
    buyer
    |> cast(attrs, [])
    |> validate_required([])
  end
end
