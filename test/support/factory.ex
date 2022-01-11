defmodule Exlivery.Factory do
  use ExMachina

  alias Exlivery.Users.User
  alias Exlivery.Orders.{Order, Item}

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
    %Item{
      category: :pizza,
      description: "Pizza de queijo",
      quantity: 4,
      unity_price: Decimal.new("30")
    }
  end

  def order_factory do
    %Order{
      delivery_address: "Algum lugar na terra",
      items: [
        build(:item),
        build(:item,
          category: :sobremesa,
          description: "Cocada",
          quantity: 3,
          unity_price: Decimal.new("40")
        )
      ],
      total_price: Decimal.new("240.00"),
      user_cpf: "123456789"
    }
  end
end
