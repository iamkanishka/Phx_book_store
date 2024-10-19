defmodule PhxBookStore.AuthorCommisionsTest do
  use PhxBookStore.DataCase

  alias PhxBookStore.AuthorCommisions

  describe "author_commisions" do
    alias PhxBookStore.AuthorCommisions.AuthorCommision

    import PhxBookStore.AuthorCommisionsFixtures

    @invalid_attrs %{}

    test "list_author_commisions/0 returns all author_commisions" do
      author_commision = author_commision_fixture()
      assert AuthorCommisions.list_author_commisions() == [author_commision]
    end

    test "get_author_commision!/1 returns the author_commision with given id" do
      author_commision = author_commision_fixture()
      assert AuthorCommisions.get_author_commision!(author_commision.id) == author_commision
    end

    test "create_author_commision/1 with valid data creates a author_commision" do
      valid_attrs = %{}

      assert {:ok, %AuthorCommision{} = author_commision} = AuthorCommisions.create_author_commision(valid_attrs)
    end

    test "create_author_commision/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = AuthorCommisions.create_author_commision(@invalid_attrs)
    end

    test "update_author_commision/2 with valid data updates the author_commision" do
      author_commision = author_commision_fixture()
      update_attrs = %{}

      assert {:ok, %AuthorCommision{} = author_commision} = AuthorCommisions.update_author_commision(author_commision, update_attrs)
    end

    test "update_author_commision/2 with invalid data returns error changeset" do
      author_commision = author_commision_fixture()
      assert {:error, %Ecto.Changeset{}} = AuthorCommisions.update_author_commision(author_commision, @invalid_attrs)
      assert author_commision == AuthorCommisions.get_author_commision!(author_commision.id)
    end

    test "delete_author_commision/1 deletes the author_commision" do
      author_commision = author_commision_fixture()
      assert {:ok, %AuthorCommision{}} = AuthorCommisions.delete_author_commision(author_commision)
      assert_raise Ecto.NoResultsError, fn -> AuthorCommisions.get_author_commision!(author_commision.id) end
    end

    test "change_author_commision/1 returns a author_commision changeset" do
      author_commision = author_commision_fixture()
      assert %Ecto.Changeset{} = AuthorCommisions.change_author_commision(author_commision)
    end
  end
end
