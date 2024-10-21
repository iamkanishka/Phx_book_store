defmodule PhxBookStore.Repo.Migrations.CreateTables do
  use Ecto.Migration

  def change do
    create table(:buyers) do
      add :first_name, :string
      add :last_name, :string
      add :email, :string
      add :address, :string
      add :city, :string
      add :state, :string
      add :zip_code, :string

      timestamps(type: :utc_datetime)
    end

    create table(:sellers) do
      add :name, :string
      add :contact_number, :string
      add :email, :string
      add :role, :string

      timestamps(type: :utc_datetime)
    end

    create table(:authors) do
      add :first_name, :string
      add :last_name, :string
      add :biography, :string

      timestamps(type: :utc_datetime)
    end

    create table(:orders) do
      add :status, :string
      add :total_amount, :float
      add :currency, :string
      add :stripe_charge_id, :string
      add :stripe_payment_intent_id, :string
      add :stripe_payment_status, :string

      timestamps(type: :utc_datetime)
    end

    create table(:order_items) do
      add :quantity, :integer
      add :price, :float
      timestamps(type: :utc_datetime)
    end

    create table(:books_stores) do
      add :name, :string
      add :address, :string
      add :city, :string
      add :state, :string
      add :zip_code, :string
      timestamps(type: :utc_datetime)
    end

    create table(:books) do
      add :title, :string
      add :isbn, :string
      add :price, :float
      add :description, :string
      add :thumbnail, :string
      add :published_on, :date
      timestamps(type: :utc_datetime)
    end

    create table(:author_commisions) do
      add :commission_amount, :float
      timestamps(type: :utc_datetime)
    end
  end

  # Table Drop
  def down(tablename) do
    drop table(tablename)
  end
end
