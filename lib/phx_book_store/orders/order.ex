defmodule PhxBookStore.Orders.Order do
  use Ecto.Schema
  import Ecto.Changeset
  alias PhxBookStore.OrdersItems.OrderItems

  schema "orders" do
    field :status, :string
    field :total_amount, :integer
    field :currency, :string
    field :stripe_charge_id, :string
    field :stripe_payment_intent_id, :string
    field :stripe_payment_status, :string

    has_many :order_items, OrderItems

    timestamps(type: :utc_datetime)
  end



  @doc false
  def changeset(order, attrs) do
    order
    |> cast(attrs,   [
    :status,
    :total_amount,
    :currency,
    :stripe_charge_id,
    :stripe_payment_intent_id,
    :stripe_payment_status
  ])
    |> validate_required(  [
    :status,
    :total_amount,
    :currency,
    :stripe_charge_id,
    :stripe_payment_intent_id,
    :stripe_payment_status
  ])
  |>  cast_assoc(:order_items,  with: OrderItems.changeset/2)
  end
end
