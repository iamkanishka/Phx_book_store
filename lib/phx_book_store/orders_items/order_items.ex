defmodule PhxBookStore.OrdersItems.OrderItems do
  alias PhxBookStore.Books.Book
  alias PhxBookStore.Orders.Order
  alias PhxBookStore.Users.User
  use Ecto.Schema
  import Ecto.Changeset

  schema "order_items" do
    field :quantity, :integer
    belongs_to :book_id, Book
    belongs_to :order_id, Order
    belongs_to :user_id, User
    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(order_items, attrs) do
    order_items
    |> cast(attrs, [:quantity, :book_id, :user_id])
    |> validate_required([:quantity, :book_id, :user_id])
  end
end
