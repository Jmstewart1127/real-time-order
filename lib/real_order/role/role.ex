defmodule RealOrder.Role.Role do
  @moduledoc """
  Role Model
  """

  use Ecto.Schema
  import Ecto.Changeset

  @required_fields ~w(name)

  schema "roles" do
    field(:name, :string, unique: true)
  end

  def changset(role, attrs) do
    role
    |> cast(attrs, @required)
    |> validate_required(@required_fields)
    |> unqique_constraint(:name)
  end
end