defmodule ChatWeb.UnsubscribeReasonController do
  use ChatWeb, :controller

  alias Chat.People
  alias Chat.People.UnsubscribeReason

  action_fallback ChatWeb.FallbackController

  def index(conn, _params) do
    unsubscribe_reasons = People.list_unsubscribe_reasons()
    render(conn, "index.json", unsubscribe_reasons: unsubscribe_reasons)
  end
#
#  def create(conn, %{"unsubscribe_reason" => unsubscribe_reason_params}) do
#    with {:ok, %UnsubscribeReason{} = unsubscribe_reason} <- People.create_unsubscribe_reason(unsubscribe_reason_params) do
#      conn
#      |> put_status(:created)
#      |> put_resp_header("location", unsubscribe_reason_path(conn, :show, unsubscribe_reason))
#      |> render("show.json", unsubscribe_reason: unsubscribe_reason)
#    end
#  end
#
#  def show(conn, %{"id" => id}) do
#    unsubscribe_reason = People.get_unsubscribe_reason!(id)
#    render(conn, "show.json", unsubscribe_reason: unsubscribe_reason)
#  end

#  def update(conn, %{"id" => id, "unsubscribe_reason" => unsubscribe_reason_params}) do
#    unsubscribe_reason = People.get_unsubscribe_reason!(id)
#
#    with {:ok, %UnsubscribeReason{} = unsubscribe_reason} <- People.update_unsubscribe_reason(unsubscribe_reason, unsubscribe_reason_params) do
#      render(conn, "show.json", unsubscribe_reason: unsubscribe_reason)
#    end
#  end
#
#  def delete(conn, %{"id" => id}) do
#    unsubscribe_reason = People.get_unsubscribe_reason!(id)
#    with {:ok, %UnsubscribeReason{}} <- People.delete_unsubscribe_reason(unsubscribe_reason) do
#      send_resp(conn, :no_content, "")
#    end
#  end
end
