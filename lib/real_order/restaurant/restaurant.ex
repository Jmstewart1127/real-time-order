defmodule do
  @moduledoc """
  Restaurant Model
  """
  use Ecto.Schema
  import Ecto.Changeset

  @required_fields ~w(name address)
  
  schema "restaurants" do 
    field(:name, :string)
    field(:address, :string, unique: true)

    timestamps(inserted_at: :created_at)
  end

  def changeset(restaraunt, attrs) do
    restaraunt
    |> cast(attrs, @required_fields)
    |> validate_required(@required_fields)
    |> unique_constraint(:address)
  end
end