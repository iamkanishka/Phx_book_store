defmodule PhxBookStore.AuthorsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `PhxBookStore.Authors` context.
  """

  @doc """
  Generate a author.
  """
  def author_fixture(attrs \\ %{}) do
    {:ok, author} =
      attrs
      |> Enum.into(%{

      })
      |> PhxBookStore.Authors.create_author()

    author
  end
end
