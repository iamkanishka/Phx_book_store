defmodule PhxBookStore.BookStoreOwners do
  @moduledoc """
  The BookStoreOwners context.
  """

  import Ecto.Query, warn: false
  alias PhxBookStore.Repo

  alias PhxBookStore.BookStoreOwners.BookStoreOwner

  @doc """
  Returns the list of books_store_owners.

  ## Examples

      iex> list_books_store_owners()
      [%BookStoreOwner{}, ...]

  """
  def list_books_store_owners do
    Repo.all(BookStoreOwner)
  end

  @doc """
  Gets a single book_store_owner.

  Raises `Ecto.NoResultsError` if the Book store owner does not exist.

  ## Examples

      iex> get_book_store_owner!(123)
      %BookStoreOwner{}

      iex> get_book_store_owner!(456)
      ** (Ecto.NoResultsError)

  """
  def get_book_store_owner!(id), do: Repo.get!(BookStoreOwner, id)

  @doc """
  Creates a book_store_owner.

  ## Examples

      iex> create_book_store_owner(%{field: value})
      {:ok, %BookStoreOwner{}}

      iex> create_book_store_owner(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_book_store_owner(attrs \\ %{}) do
    %BookStoreOwner{}
    |> BookStoreOwner.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a book_store_owner.

  ## Examples

      iex> update_book_store_owner(book_store_owner, %{field: new_value})
      {:ok, %BookStoreOwner{}}

      iex> update_book_store_owner(book_store_owner, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_book_store_owner(%BookStoreOwner{} = book_store_owner, attrs) do
    book_store_owner
    |> BookStoreOwner.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a book_store_owner.

  ## Examples

      iex> delete_book_store_owner(book_store_owner)
      {:ok, %BookStoreOwner{}}

      iex> delete_book_store_owner(book_store_owner)
      {:error, %Ecto.Changeset{}}

  """
  def delete_book_store_owner(%BookStoreOwner{} = book_store_owner) do
    Repo.delete(book_store_owner)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking book_store_owner changes.

  ## Examples

      iex> change_book_store_owner(book_store_owner)
      %Ecto.Changeset{data: %BookStoreOwner{}}

  """
  def change_book_store_owner(%BookStoreOwner{} = book_store_owner, attrs \\ %{}) do
    BookStoreOwner.changeset(book_store_owner, attrs)
  end
end
