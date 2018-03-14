defmodule Chat.PeopleTest do
  use Chat.DataCase

  alias Chat.People

  describe "unsubscribe_reasons" do
    alias Chat.People.UnsubscribeReason

    @valid_attrs %{identifier: "some identifier", show_to_user: true, title: "some title"}
    @update_attrs %{identifier: "some updated identifier", show_to_user: false, title: "some updated title"}
    @invalid_attrs %{identifier: nil, show_to_user: nil, title: nil}

    def unsubscribe_reason_fixture(attrs \\ %{}) do
      {:ok, unsubscribe_reason} =
        attrs
        |> Enum.into(@valid_attrs)
        |> People.create_unsubscribe_reason()
      Repo.get!(UnsubscribeReason, unsubscribe_reason.id)
      #unsubscribe_reason
    end

    test "list_unsubscribe_reasons/0 returns all unsubscribe_reasons" do#
      unsubscribe_reason = unsubscribe_reason_fixture()
      assert People.list_unsubscribe_reasons() == [unsubscribe_reason]
    end

    test "get_unsubscribe_reason!/1 returns the unsubscribe_reason with given id" do#
      unsubscribe_reason = unsubscribe_reason_fixture()
      assert People.get_unsubscribe_reason!(unsubscribe_reason.id) == unsubscribe_reason
    end

    test "create_unsubscribe_reason/1 with valid data creates a unsubscribe_reason" do
      assert {:ok, %UnsubscribeReason{} = unsubscribe_reason} = People.create_unsubscribe_reason(@valid_attrs)
      assert unsubscribe_reason.identifier == "some identifier"
      assert unsubscribe_reason.show_to_user == true
      assert unsubscribe_reason.title == "some title"
    end

    test "create_unsubscribe_reason/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = People.create_unsubscribe_reason(@invalid_attrs)
    end

    test "update_unsubscribe_reason/2 with valid data updates the unsubscribe_reason" do
      unsubscribe_reason = unsubscribe_reason_fixture()
      assert {:ok, unsubscribe_reason} = People.update_unsubscribe_reason(unsubscribe_reason, @update_attrs)
      assert %UnsubscribeReason{} = unsubscribe_reason
      assert unsubscribe_reason.identifier == "some updated identifier"
      assert unsubscribe_reason.show_to_user == false
      assert unsubscribe_reason.title == "some updated title"
    end

    test "update_unsubscribe_reason/2 with invalid data returns error changeset" do#
      unsubscribe_reason = unsubscribe_reason_fixture()
      assert {:error, %Ecto.Changeset{}} = People.update_unsubscribe_reason(unsubscribe_reason, @invalid_attrs)
      assert unsubscribe_reason == People.get_unsubscribe_reason!(unsubscribe_reason.id)
    end

    test "delete_unsubscribe_reason/1 deletes the unsubscribe_reason" do
      unsubscribe_reason = unsubscribe_reason_fixture()
      assert {:ok, %UnsubscribeReason{}} = People.delete_unsubscribe_reason(unsubscribe_reason)
      assert_raise Ecto.NoResultsError, fn -> People.get_unsubscribe_reason!(unsubscribe_reason.id) end
    end

    test "change_unsubscribe_reason/1 returns a unsubscribe_reason changeset" do
      unsubscribe_reason = unsubscribe_reason_fixture()
      assert %Ecto.Changeset{} = People.change_unsubscribe_reason(unsubscribe_reason)
    end
  end
end
