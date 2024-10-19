defmodule PhxBookStore.Repo.Migrations.CreateOrders do
  use Ecto.Migration

  def change do
    create table(:orders) do

      timestamps(type: :utc_datetime)
    end
  end
end
