defmodule RealOrder.Order.Order do
  @moduledoc """
  Order Model
  """

  use Ecto.Schema
  import Ecto.Changeset

  schema "orders" do
    field(:is_dine_in, :boolean, default: false)
    field(:is_carryout, :boolean, default: false)

    belongs_to(:user, User, foriegn_key: :user_id)
    belongs_to(:restaurant, Restaraunt, foriegn_key: :restaurant_id)

    timestamps()
  end

  def changset(%Order{} = order, attrs) do
    order
    |> unique_constraint(:user_id, name: :order_user_id)
    |> unique_constraint(:restaurant_id, name: :order_restaurant_id)
  end
end