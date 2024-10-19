defmodule PhxBookStore.AuthorCommisions do
  @moduledoc """
  The AuthorCommisions context.
  """

  import Ecto.Query, warn: false
  alias PhxBookStore.Repo

  alias PhxBookStore.AuthorCommisions.AuthorCommision

  @doc """
  Returns the list of author_commisions.

  ## Examples

      iex> list_author_commisions()
      [%AuthorCommision{}, ...]

  """
  def list_author_commisions do
    Repo.all(AuthorCommision)
  end

  @doc """
  Gets a single author_commision.

  Raises `Ecto.NoResultsError` if the Author commision does not exist.

  ## Examples

      iex> get_author_commision!(123)
      %AuthorCommision{}

      iex> get_author_commision!(456)
      ** (Ecto.NoResultsError)

  """
  def get_author_commision!(id), do: Repo.get!(AuthorCommision, id)

  @doc """
  Creates a author_commision.

  ## Examples

      iex> create_author_commision(%{field: value})
      {:ok, %AuthorCommision{}}

      iex> create_author_commision(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_author_commision(attrs \\ %{}) do
    %AuthorCommision{}
    |> AuthorCommision.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a author_commision.

  ## Examples

      iex> update_author_commision(author_commision, %{field: new_value})
      {:ok, %AuthorCommision{}}

      iex> update_author_commision(author_commision, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_author_commision(%AuthorCommision{} = author_commision, attrs) do
    author_commision
    |> AuthorCommision.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a author_commision.

  ## Examples

      iex> delete_author_commision(author_commision)
      {:ok, %AuthorCommision{}}

      iex> delete_author_commision(author_commision)
      {:error, %Ecto.Changeset{}}

  """
  def delete_author_commision(%AuthorCommision{} = author_commision) do
    Repo.delete(author_commision)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking author_commision changes.

  ## Examples

      iex> change_author_commision(author_commision)
      %Ecto.Changeset{data: %AuthorCommision{}}

  """
  def change_author_commision(%AuthorCommision{} = author_commision, attrs \\ %{}) do
    AuthorCommision.changeset(author_commision, attrs)
  end
end
