defmodule PhxBookStore.BooksFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `PhxBookStore.Books` context.
  """

  @doc """
  Generate a book.
  """
  def book_fixture(attrs \\ %{}) do
    {:ok, book} =
      attrs
      |> Enum.into(%{

      })
      |> PhxBookStore.Books.create_book()

    book
  end
end
