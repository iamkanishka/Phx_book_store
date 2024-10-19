defmodule PhxBookStore.Repo.Migrations.CreateOrderItems do
  use Ecto.Migration

  def change do
    create table(:order_items) do

      timestamps(type: :utc_datetime)
    end
  end
end
