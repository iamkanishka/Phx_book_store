defmodule PhxBookStore.BuyersTest do
  use PhxBookStore.DataCase

  alias PhxBookStore.Buyers

  describe "buyers" do
    alias PhxBookStore.Buyers.Buyer

    import PhxBookStore.BuyersFixtures

    @invalid_attrs %{}

    test "list_buyers/0 returns all buyers" do
      buyer = buyer_fixture()
      assert Buyers.list_buyers() == [buyer]
    end

    test "get_buyer!/1 returns the buyer with given id" do
      buyer = buyer_fixture()
      assert Buyers.get_buyer!(buyer.id) == buyer
    end

    test "create_buyer/1 with valid data creates a buyer" do
      valid_attrs = %{}

      assert {:ok, %Buyer{} = buyer} = Buyers.create_buyer(valid_attrs)
    end

    test "create_buyer/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Buyers.create_buyer(@invalid_attrs)
    end

    test "update_buyer/2 with valid data updates the buyer" do
      buyer = buyer_fixture()
      update_attrs = %{}

      assert {:ok, %Buyer{} = buyer} = Buyers.update_buyer(buyer, update_attrs)
    end

    test "update_buyer/2 with invalid data returns error changeset" do
      buyer = buyer_fixture()
      assert {:error, %Ecto.Changeset{}} = Buyers.update_buyer(buyer, @invalid_attrs)
      assert buyer == Buyers.get_buyer!(buyer.id)
    end

    test "delete_buyer/1 deletes the buyer" do
      buyer = buyer_fixture()
      assert {:ok, %Buyer{}} = Buyers.delete_buyer(buyer)
      assert_raise Ecto.NoResultsError, fn -> Buyers.get_buyer!(buyer.id) end
    end

    test "change_buyer/1 returns a buyer changeset" do
      buyer = buyer_fixture()
      assert %Ecto.Changeset{} = Buyers.change_buyer(buyer)
    end
  end
end
