defmodule PhxBookStore.Repo.Migrations.CreateBooksStoreOwners do
  use Ecto.Migration

  def change do
    create table(:books_store_owners) do

      timestamps(type: :utc_datetime)
    end
  end
end
