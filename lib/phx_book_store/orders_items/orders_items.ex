defmodule PhxBookStore.OrdersItems do
  @moduledoc """
  The OrdersItems context.
  """

  import Ecto.Query, warn: false
  alias PhxBookStore.Repo

  alias PhxBookStore.OrdersItems.OrderItems

  @doc """
  Returns the list of order_items.

  ## Examples

      iex> list_order_items()
      [%OrderItems{}, ...]

  """
  def list_order_items do
    Repo.all(OrderItems)
  end

  @doc """
  Gets a single order_items.

  Raises `Ecto.NoResultsError` if the Order items does not exist.

  ## Examples

      iex> get_order_items!(123)
      %OrderItems{}

      iex> get_order_items!(456)
      ** (Ecto.NoResultsError)

  """
  def get_order_items!(id), do: Repo.get!(OrderItems, id)

  @doc """
  Creates a order_items.

  ## Examples

      iex> create_order_items(%{field: value})
      {:ok, %OrderItems{}}

      iex> create_order_items(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_order_items(attrs \\ %{}) do
    %OrderItems{}
    |> OrderItems.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a order_items.

  ## Examples

      iex> update_order_items(order_items, %{field: new_value})
      {:ok, %OrderItems{}}

      iex> update_order_items(order_items, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_order_items(%OrderItems{} = order_items, attrs) do
    order_items
    |> OrderItems.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a order_items.

  ## Examples

      iex> delete_order_items(order_items)
      {:ok, %OrderItems{}}

      iex> delete_order_items(order_items)
      {:error, %Ecto.Changeset{}}

  """
  def delete_order_items(%OrderItems{} = order_items) do
    Repo.delete(order_items)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking order_items changes.

  ## Examples

      iex> change_order_items(order_items)
      %Ecto.Changeset{data: %OrderItems{}}

  """
  def change_order_items(%OrderItems{} = order_items, attrs \\ %{}) do
    OrderItems.changeset(order_items, attrs)
  end
end
