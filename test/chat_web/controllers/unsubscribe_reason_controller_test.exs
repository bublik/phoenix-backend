defmodule ChatWeb.UnsubscribeReasonControllerTest do
  use ChatWeb.ConnCase

  alias Chat.People
  alias Chat.People.UnsubscribeReason

  @create_attrs %{identifier: "some identifier", show_to_user: true, title: "some title"}
  @update_attrs %{identifier: "some updated identifier", show_to_user: false, title: "some updated title"}
  @invalid_attrs %{identifier: nil}

  def fixture(:unsubscribe_reason) do
    {:ok, unsubscribe_reason} = People.create_unsubscribe_reason(@create_attrs)
    unsubscribe_reason
  end

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "index" do
    test "lists all unsubscribe_reasons", %{conn: conn} do
      conn = get conn, unsubscribe_reason_path(conn, :index)
      assert json_response(conn, 200) == []
    end
  end

#  describe "create unsubscribe_reason" do
#    test "renders unsubscribe_reason when data is valid", %{conn: conn} do
#      conn = post conn, unsubscribe_reason_path(conn, :create), unsubscribe_reason: @create_attrs
#      assert %{"id" => id} = json_response(conn, 201)["data"]
#
#      conn = get conn, unsubscribe_reason_path(conn, :show, id)
#      assert json_response(conn, 200)["data"] == %{
#        "id" => id,
#        "identifier" => "some identifier",
#        "show_to_user" => true,
#        "title" => "some title"}
#    end
#
#    test "renders errors when data is invalid", %{conn: conn} do
#      conn = post conn, unsubscribe_reason_path(conn, :create), unsubscribe_reason: @invalid_attrs
#      assert json_response(conn, 422)["errors"] != %{}
#    end
#  end

#  describe "update unsubscribe_reason" do
#    setup [:create_unsubscribe_reason]
#
#    test "renders unsubscribe_reason when data is valid", %{conn: conn, unsubscribe_reason: %UnsubscribeReason{id: id} = unsubscribe_reason} do
#      conn = put conn, unsubscribe_reason_path(conn, :update, unsubscribe_reason), unsubscribe_reason: @update_attrs
#      assert %{"id" => ^id} = json_response(conn, 200)["data"]
#
#      conn = get conn, unsubscribe_reason_path(conn, :show, id)
#      assert json_response(conn, 200)["data"] == %{
#        "id" => id,
#        "identifier" => "some updated identifier",
#        "show_to_user" => false,
#        "title" => "some updated title"}
#    end
#
#    test "renders errors when data is invalid", %{conn: conn, unsubscribe_reason: unsubscribe_reason} do
#      conn = put conn, unsubscribe_reason_path(conn, :update, unsubscribe_reason), unsubscribe_reason: @invalid_attrs
#      assert json_response(conn, 422)["errors"] != %{}
#    end
#  end

#  describe "delete unsubscribe_reason" do
#    setup [:create_unsubscribe_reason]
#
#    test "deletes chosen unsubscribe_reason", %{conn: conn, unsubscribe_reason: unsubscribe_reason} do
#      conn = delete conn, unsubscribe_reason_path(conn, :delete, unsubscribe_reason)
#      assert response(conn, 204)
#      assert_error_sent 404, fn ->
#        get conn, unsubscribe_reason_path(conn, :show, unsubscribe_reason)
#      end
#    end
#  end

  defp create_unsubscribe_reason(_) do
    unsubscribe_reason = fixture(:unsubscribe_reason)
    {:ok, unsubscribe_reason: unsubscribe_reason}
  end
end
