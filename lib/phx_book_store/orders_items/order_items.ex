defmodule PhxBookStore.OrdersItems.OrderItems do
  alias PhxBookStore.Orders.Order
  use Ecto.Schema
  import Ecto.Changeset
  alias  PhxBookStore.BookStores.BookStore


  schema "order_items" do
    field :quantity, :integer
    field :price, :integer
    has_many :books, Book
    has_many :book_stores,BookStore

    belongs_to :order,  Order
    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(order_items, attrs) do
    order_items
    |> cast(attrs, [])
    |> validate_required([])
  end
end
