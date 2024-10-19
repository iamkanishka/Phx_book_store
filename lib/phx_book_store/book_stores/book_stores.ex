defmodule PhxBookStore.BookStores do
  @moduledoc """
  The BookStores context.
  """

  import Ecto.Query, warn: false
  alias PhxBookStore.Repo

  alias PhxBookStore.BookStores.BookStore

  @doc """
  Returns the list of books_stores.

  ## Examples

      iex> list_books_stores()
      [%BookStore{}, ...]

  """
  def list_books_stores do
    Repo.all(BookStore)
  end

  @doc """
  Gets a single book_store.

  Raises `Ecto.NoResultsError` if the Book store does not exist.

  ## Examples

      iex> get_book_store!(123)
      %BookStore{}

      iex> get_book_store!(456)
      ** (Ecto.NoResultsError)

  """
  def get_book_store!(id), do: Repo.get!(BookStore, id)

  @doc """
  Creates a book_store.

  ## Examples

      iex> create_book_store(%{field: value})
      {:ok, %BookStore{}}

      iex> create_book_store(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_book_store(attrs \\ %{}) do
    %BookStore{}
    |> BookStore.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a book_store.

  ## Examples

      iex> update_book_store(book_store, %{field: new_value})
      {:ok, %BookStore{}}

      iex> update_book_store(book_store, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_book_store(%BookStore{} = book_store, attrs) do
    book_store
    |> BookStore.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a book_store.

  ## Examples

      iex> delete_book_store(book_store)
      {:ok, %BookStore{}}

      iex> delete_book_store(book_store)
      {:error, %Ecto.Changeset{}}

  """
  def delete_book_store(%BookStore{} = book_store) do
    Repo.delete(book_store)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking book_store changes.

  ## Examples

      iex> change_book_store(book_store)
      %Ecto.Changeset{data: %BookStore{}}

  """
  def change_book_store(%BookStore{} = book_store, attrs \\ %{}) do
    BookStore.changeset(book_store, attrs)
  end
end
