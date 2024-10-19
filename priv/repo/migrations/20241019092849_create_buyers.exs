defmodule PhxBookStore.Repo.Migrations.CreateBuyers do
  use Ecto.Migration

  def change do
    create table(:buyers) do

      timestamps(type: :utc_datetime)
    end
  end
end
