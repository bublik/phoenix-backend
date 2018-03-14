defmodule Chat.Repo.Migrations.CreateUnsubscribeReasons do
  use Ecto.Migration

  def change do
    create table(:unsubscribe_reasons) do
      add :title, :string
      add :identifier, :string
      add :show_to_user, :boolean, default: false, null: false

      timestamps([inserted_at: :created_at])
    end

  end
end
