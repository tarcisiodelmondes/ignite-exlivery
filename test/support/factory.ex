defmodule Exlivery.Factory do
  use ExMachina

  alias Exlivery.Users.User
  alias Exlivery.Orders.Item

  def user_factory do
    %User{
      address: "Algum lugar na terra",
      age: 19,
      cpf: "123456789",
      email: "test@test.com",
      name: "Tarcisio"
    }
  end

  def item_factory do
    %Exlivery.Orders.Item{
      category: :pizza,
      description: "Pizza de queijo",
      quantity: 4,
      unity_price: Decimal.new(30)
    }
  end
end
