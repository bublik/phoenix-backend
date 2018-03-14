defmodule Chat.People do
  @moduledoc """
  The People context.
  """

  import Ecto.Query, warn: false
  alias Chat.Repo

  alias Chat.People.UnsubscribeReason

  @doc """
  Returns the list of unsubscribe_reasons.

  ## Examples

      iex> list_unsubscribe_reasons()
      [%UnsubscribeReason{}, ...]

  """
  def list_unsubscribe_reasons do
    Repo.all(UnsubscribeReason)
  end

  @doc """
  Gets a single unsubscribe_reason.

  Raises `Ecto.NoResultsError` if the Unsubscribe reason does not exist.

  ## Examples

      iex> get_unsubscribe_reason!(123)
      %UnsubscribeReason{}

      iex> get_unsubscribe_reason!(456)
      ** (Ecto.NoResultsError)

  """
  def get_unsubscribe_reason!(id), do: Repo.get!(UnsubscribeReason, id)

  @doc """
  Creates a unsubscribe_reason.

  ## Examples

      iex> create_unsubscribe_reason(%{field: value})
      {:ok, %UnsubscribeReason{}}

      iex> create_unsubscribe_reason(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_unsubscribe_reason(attrs \\ %{}) do
    %UnsubscribeReason{}
    |> UnsubscribeReason.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a unsubscribe_reason.

  ## Examples

      iex> update_unsubscribe_reason(unsubscribe_reason, %{field: new_value})
      {:ok, %UnsubscribeReason{}}

      iex> update_unsubscribe_reason(unsubscribe_reason, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_unsubscribe_reason(%UnsubscribeReason{} = unsubscribe_reason, attrs) do
    unsubscribe_reason
    |> UnsubscribeReason.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a UnsubscribeReason.

  ## Examples

      iex> delete_unsubscribe_reason(unsubscribe_reason)
      {:ok, %UnsubscribeReason{}}

      iex> delete_unsubscribe_reason(unsubscribe_reason)
      {:error, %Ecto.Changeset{}}

  """
  def delete_unsubscribe_reason(%UnsubscribeReason{} = unsubscribe_reason) do
    Repo.delete(unsubscribe_reason)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking unsubscribe_reason changes.

  ## Examples

      iex> change_unsubscribe_reason(unsubscribe_reason)
      %Ecto.Changeset{source: %UnsubscribeReason{}}

  """
  def change_unsubscribe_reason(%UnsubscribeReason{} = unsubscribe_reason) do
    UnsubscribeReason.changeset(unsubscribe_reason, %{})
  end
end
