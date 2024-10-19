defmodule PhxBookStore.OrdersItemsTest do
  use PhxBookStore.DataCase

  alias PhxBookStore.OrdersItems

  describe "order_items" do
    alias PhxBookStore.OrdersItems.OrderItems

    import PhxBookStore.OrdersItemsFixtures

    @invalid_attrs %{}

    test "list_order_items/0 returns all order_items" do
      order_items = order_items_fixture()
      assert OrdersItems.list_order_items() == [order_items]
    end

    test "get_order_items!/1 returns the order_items with given id" do
      order_items = order_items_fixture()
      assert OrdersItems.get_order_items!(order_items.id) == order_items
    end

    test "create_order_items/1 with valid data creates a order_items" do
      valid_attrs = %{}

      assert {:ok, %OrderItems{} = order_items} = OrdersItems.create_order_items(valid_attrs)
    end

    test "create_order_items/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = OrdersItems.create_order_items(@invalid_attrs)
    end

    test "update_order_items/2 with valid data updates the order_items" do
      order_items = order_items_fixture()
      update_attrs = %{}

      assert {:ok, %OrderItems{} = order_items} = OrdersItems.update_order_items(order_items, update_attrs)
    end

    test "update_order_items/2 with invalid data returns error changeset" do
      order_items = order_items_fixture()
      assert {:error, %Ecto.Changeset{}} = OrdersItems.update_order_items(order_items, @invalid_attrs)
      assert order_items == OrdersItems.get_order_items!(order_items.id)
    end

    test "delete_order_items/1 deletes the order_items" do
      order_items = order_items_fixture()
      assert {:ok, %OrderItems{}} = OrdersItems.delete_order_items(order_items)
      assert_raise Ecto.NoResultsError, fn -> OrdersItems.get_order_items!(order_items.id) end
    end

    test "change_order_items/1 returns a order_items changeset" do
      order_items = order_items_fixture()
      assert %Ecto.Changeset{} = OrdersItems.change_order_items(order_items)
    end
  end
end
