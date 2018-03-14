defmodule ChatWeb.UnsubscribeReasonView do
  use ChatWeb, :view
  alias ChatWeb.UnsubscribeReasonView

  def render("index.json", %{unsubscribe_reasons: unsubscribe_reasons}) do
    render_many(unsubscribe_reasons, UnsubscribeReasonView, "unsubscribe_reason.json")
  end

#  def render("show.json", %{unsubscribe_reason: unsubscribe_reason}) do
#    %{data: render_one(unsubscribe_reason, UnsubscribeReasonView, "unsubscribe_reason.json")}
#  end

  def render("unsubscribe_reason.json", %{unsubscribe_reason: unsubscribe_reason}) do
    %{id: unsubscribe_reason.id,
      title: unsubscribe_reason.title,
      identifier: unsubscribe_reason.identifier,
      show_to_user: unsubscribe_reason.show_to_user}
  end
end
