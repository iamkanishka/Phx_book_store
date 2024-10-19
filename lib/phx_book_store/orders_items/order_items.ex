defmodule PhxBookStore.OrdersItems.OrderItems do
  use Ecto.Schema
  import Ecto.Changeset

  schema "order_items" do


    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(order_items, attrs) do
    order_items
    |> cast(attrs, [])
    |> validate_required([])
  end
end
