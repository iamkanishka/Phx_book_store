defmodule PhxBookStore.BookStoresFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `PhxBookStore.BookStores` context.
  """

  @doc """
  Generate a book_store.
  """
  def book_store_fixture(attrs \\ %{}) do
    {:ok, book_store} =
      attrs
      |> Enum.into(%{

      })
      |> PhxBookStore.BookStores.create_book_store()

    book_store
  end
end
