defmodule RealOrder.User.User do 
@moduledoc """
User Model
"""

use Ecto.Schema
import Ecto.Changeset

@required_fields ~w(email username password)a
# @optional_fields ~w(optional fields here)a

  schema "users" do
    field(:first_name, :string)
    field(:last_name, :string)
    field(:email, :string, unique: true)
    field(:password, :string)

    belongs_to(:role, Role, foriegn_key: role_id)

    timestamps(inserted_at: :created_at)
  end

  def changeset(%User{} = user, attrs) do 
    user
      |> cast(attrs, @required_fields)
      |> validate_required(@required_fields)
      |> assoc_constraint(:role)
      |> unique_constraint(:email)
  end
end
