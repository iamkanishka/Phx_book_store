defmodule PhxBookStore.Repo.Migrations.CreateAuthors do
  use Ecto.Migration

  def change do
    create table(:authors) do

      timestamps(type: :utc_datetime)
    end
  end
end
