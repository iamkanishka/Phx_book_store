defmodule PhxBookStore.BookStoresTest do
  use PhxBookStore.DataCase

  alias PhxBookStore.BookStores

  describe "books_stores" do
    alias PhxBookStore.BookStores.BookStore

    import PhxBookStore.BookStoresFixtures

    @invalid_attrs %{}

    test "list_books_stores/0 returns all books_stores" do
      book_store = book_store_fixture()
      assert BookStores.list_books_stores() == [book_store]
    end

    test "get_book_store!/1 returns the book_store with given id" do
      book_store = book_store_fixture()
      assert BookStores.get_book_store!(book_store.id) == book_store
    end

    test "create_book_store/1 with valid data creates a book_store" do
      valid_attrs = %{}

      assert {:ok, %BookStore{} = book_store} = BookStores.create_book_store(valid_attrs)
    end

    test "create_book_store/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = BookStores.create_book_store(@invalid_attrs)
    end

    test "update_book_store/2 with valid data updates the book_store" do
      book_store = book_store_fixture()
      update_attrs = %{}

      assert {:ok, %BookStore{} = book_store} = BookStores.update_book_store(book_store, update_attrs)
    end

    test "update_book_store/2 with invalid data returns error changeset" do
      book_store = book_store_fixture()
      assert {:error, %Ecto.Changeset{}} = BookStores.update_book_store(book_store, @invalid_attrs)
      assert book_store == BookStores.get_book_store!(book_store.id)
    end

    test "delete_book_store/1 deletes the book_store" do
      book_store = book_store_fixture()
      assert {:ok, %BookStore{}} = BookStores.delete_book_store(book_store)
      assert_raise Ecto.NoResultsError, fn -> BookStores.get_book_store!(book_store.id) end
    end

    test "change_book_store/1 returns a book_store changeset" do
      book_store = book_store_fixture()
      assert %Ecto.Changeset{} = BookStores.change_book_store(book_store)
    end
  end
end
