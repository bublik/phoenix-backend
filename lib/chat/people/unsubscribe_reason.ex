defmodule Chat.People.UnsubscribeReason do
  use Ecto.Schema
  import Ecto.Changeset
  alias Chat.People.UnsubscribeReason
  @timestamps_opts [inserted_at: :created_at]

  schema "unsubscribe_reasons" do
    field :identifier, :string
    field :show_to_user, :boolean, default: false
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(%UnsubscribeReason{} = unsubscribe_reason, attrs) do
    unsubscribe_reason
    |> cast(attrs, [:title, :identifier, :show_to_user])
    |> validate_required([:title, :identifier, :show_to_user])
    |> unique_constraint(:identifier)
  end
end
