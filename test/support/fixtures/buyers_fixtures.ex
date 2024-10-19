defmodule PhxBookStore.BuyersFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `PhxBookStore.Buyers` context.
  """

  @doc """
  Generate a buyer.
  """
  def buyer_fixture(attrs \\ %{}) do
    {:ok, buyer} =
      attrs
      |> Enum.into(%{

      })
      |> PhxBookStore.Buyers.create_buyer()

    buyer
  end
end
