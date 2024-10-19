defmodule PhxBookStore.BookStoreOwnersTest do
  use PhxBookStore.DataCase

  alias PhxBookStore.BookStoreOwners

  describe "books_store_owners" do
    alias PhxBookStore.BookStoreOwners.BookStoreOwner

    import PhxBookStore.BookStoreOwnersFixtures

    @invalid_attrs %{}

    test "list_books_store_owners/0 returns all books_store_owners" do
      book_store_owner = book_store_owner_fixture()
      assert BookStoreOwners.list_books_store_owners() == [book_store_owner]
    end

    test "get_book_store_owner!/1 returns the book_store_owner with given id" do
      book_store_owner = book_store_owner_fixture()
      assert BookStoreOwners.get_book_store_owner!(book_store_owner.id) == book_store_owner
    end

    test "create_book_store_owner/1 with valid data creates a book_store_owner" do
      valid_attrs = %{}

      assert {:ok, %BookStoreOwner{} = book_store_owner} = BookStoreOwners.create_book_store_owner(valid_attrs)
    end

    test "create_book_store_owner/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = BookStoreOwners.create_book_store_owner(@invalid_attrs)
    end

    test "update_book_store_owner/2 with valid data updates the book_store_owner" do
      book_store_owner = book_store_owner_fixture()
      update_attrs = %{}

      assert {:ok, %BookStoreOwner{} = book_store_owner} = BookStoreOwners.update_book_store_owner(book_store_owner, update_attrs)
    end

    test "update_book_store_owner/2 with invalid data returns error changeset" do
      book_store_owner = book_store_owner_fixture()
      assert {:error, %Ecto.Changeset{}} = BookStoreOwners.update_book_store_owner(book_store_owner, @invalid_attrs)
      assert book_store_owner == BookStoreOwners.get_book_store_owner!(book_store_owner.id)
    end

    test "delete_book_store_owner/1 deletes the book_store_owner" do
      book_store_owner = book_store_owner_fixture()
      assert {:ok, %BookStoreOwner{}} = BookStoreOwners.delete_book_store_owner(book_store_owner)
      assert_raise Ecto.NoResultsError, fn -> BookStoreOwners.get_book_store_owner!(book_store_owner.id) end
    end

    test "change_book_store_owner/1 returns a book_store_owner changeset" do
      book_store_owner = book_store_owner_fixture()
      assert %Ecto.Changeset{} = BookStoreOwners.change_book_store_owner(book_store_owner)
    end
  end
end
