defmodule PhxBookStore.Repo.Migrations.CreateBooks do
  use Ecto.Migration

  def change do
    create table(:books) do

      timestamps(type: :utc_datetime)
    end
  end
end
