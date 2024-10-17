defmodule PhxBookStore.Repo do
  use Ecto.Repo,
    otp_app: :phx_book_store,
    adapter: Ecto.Adapters.Postgres
end
