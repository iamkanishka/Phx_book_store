defmodule PhxBookStore.SellersTest do
  use PhxBookStore.DataCase

  alias PhxBookStore.Sellers

  describe "sellers" do
    alias PhxBookStore.Sellers.Seller

    import PhxBookStore.SellersFixtures

    @invalid_attrs %{}

    test "list_sellers/0 returns all sellers" do
      seller = seller_fixture()
      assert Sellers.list_sellers() == [seller]
    end

    test "get_seller!/1 returns the seller with given id" do
      seller = seller_fixture()
      assert Sellers.get_seller!(seller.id) == seller
    end

    test "create_seller/1 with valid data creates a seller" do
      valid_attrs = %{}

      assert {:ok, %Seller{} = seller} = Sellers.create_seller(valid_attrs)
    end

    test "create_seller/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Sellers.create_seller(@invalid_attrs)
    end

    test "update_seller/2 with valid data updates the seller" do
      seller = seller_fixture()
      update_attrs = %{}

      assert {:ok, %Seller{} = seller} = Sellers.update_seller(seller, update_attrs)
    end

    test "update_seller/2 with invalid data returns error changeset" do
      seller = seller_fixture()
      assert {:error, %Ecto.Changeset{}} = Sellers.update_seller(seller, @invalid_attrs)
      assert seller == Sellers.get_seller!(seller.id)
    end

    test "delete_seller/1 deletes the seller" do
      seller = seller_fixture()
      assert {:ok, %Seller{}} = Sellers.delete_seller(seller)
      assert_raise Ecto.NoResultsError, fn -> Sellers.get_seller!(seller.id) end
    end

    test "change_seller/1 returns a seller changeset" do
      seller = seller_fixture()
      assert %Ecto.Changeset{} = Sellers.change_seller(seller)
    end
  end
end
