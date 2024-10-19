defmodule PhxBookStore.OrdersItemsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `PhxBookStore.OrdersItems` context.
  """

  @doc """
  Generate a order_items.
  """
  def order_items_fixture(attrs \\ %{}) do
    {:ok, order_items} =
      attrs
      |> Enum.into(%{

      })
      |> PhxBookStore.OrdersItems.create_order_items()

    order_items
  end
end
