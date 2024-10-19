defmodule PhxBookStore.BookStoreOwnersFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `PhxBookStore.BookStoreOwners` context.
  """

  @doc """
  Generate a book_store_owner.
  """
  def book_store_owner_fixture(attrs \\ %{}) do
    {:ok, book_store_owner} =
      attrs
      |> Enum.into(%{

      })
      |> PhxBookStore.BookStoreOwners.create_book_store_owner()

    book_store_owner
  end
end
