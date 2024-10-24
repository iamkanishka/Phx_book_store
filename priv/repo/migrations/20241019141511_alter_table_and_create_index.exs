defmodule PhxBookStore.Repo.Migrations.AlterTableAndCreateIndex do
  use Ecto.Migration

  def change do
    alter table(:buyers) do
    end

    alter table(:authors) do
    end

    alter table(:author_commisions) do
    end

    alter table(:books) do
    end

    alter table(:book_stores) do
      add :seller_id, references(:sellers, on_delete: :delete_all)
    end

    alter table(:sellers) do
      add :books_store_id, references(:books_stores, on_delete: :nothing)
    end

    alter table(:orders) do
      add :order_item_id, references(:order_items, on_delete: :nothing)
    end

    alter table(:order_items) do
      add :book_id, references(:books, on_delete: :nothing)
      add :buyer_id, references(:buyers, on_delete: :nothing)
      add :book_store_id, references(:book_stores, on_delete: :nothing)
      add :order_id, references(:orders, on_delete: :nothing)
    end

    # Author_commisions

    create index(:author_commisions, [:book_id])
    create index(:author_commisions, [:author_id])
    create unique_index(:author_commisions, [:book_id, :author_id])

    # Books

    # create index(:books, [:author_id])
    create unique_index(:books, [:author_id])

    #  Book Stores
    # create index(:book_stores, [:book_id])
    create unique_index(:book_stores, [:book_id])

    # Order Items

    create index(:order_items, [:book_id])
    create index(:order_items, [:buyer_id])
    create index(:order_items, [:book_store_id])
    create index(:order_items, [:order_id])
    create unique_index(:order_items, [:book_id, :buyer_id, :book_store_id, :order_id])

    # Orders
    create index(:orders, [:order_item_id])
    create index(:orders, [:buyer_id])
    create unique_index(:orders, [:order_item_id, :buyer_id])

    # Authors
    create index(:authors, [:book_id])
    create index(:authors, [:author_commision_id])
    create unique_index(:authors, [:book_id, :author_commision_id])

    # Sellers

    # create index(:seller, [:book_store_id])
    create unique_index(:sellers, [:book_store_id])

    # Buyers

    # create index(:buyers, [:order_id])
    create unique_index(:buyers, [:order_id])
  end
end
