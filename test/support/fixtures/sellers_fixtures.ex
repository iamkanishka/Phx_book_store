defmodule PhxBookStore.SellersFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `PhxBookStore.Sellers` context.
  """

  @doc """
  Generate a seller.
  """
  def seller_fixture(attrs \\ %{}) do
    {:ok, seller} =
      attrs
      |> Enum.into(%{

      })
      |> PhxBookStore.Sellers.create_seller()

    seller
  end
end
