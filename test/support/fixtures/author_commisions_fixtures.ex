defmodule PhxBookStore.AuthorCommisionsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `PhxBookStore.AuthorCommisions` context.
  """

  @doc """
  Generate a author_commision.
  """
  def author_commision_fixture(attrs \\ %{}) do
    {:ok, author_commision} =
      attrs
      |> Enum.into(%{

      })
      |> PhxBookStore.AuthorCommisions.create_author_commision()

    author_commision
  end
end
