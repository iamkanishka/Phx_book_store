defmodule PhxBookStore.Repo.Migrations.CreateSellers do
  use Ecto.Migration

  def change do
    create table(:sellers) do

      timestamps(type: :utc_datetime)
    end
  end
end
