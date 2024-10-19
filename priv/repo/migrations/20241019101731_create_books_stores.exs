defmodule PhxBookStore.Repo.Migrations.CreateBooksStores do
  use Ecto.Migration

  def change do
    create table(:books_stores) do

      timestamps(type: :utc_datetime)
    end
  end
end
