defmodule PhxBookStore.Repo.Migrations.CreateAuthorCommisions do
  use Ecto.Migration

  def change do
    create table(:author_commisions) do

      timestamps(type: :utc_datetime)
    end
  end
end
