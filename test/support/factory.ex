defmodule Exlivery.Factory do
  use ExMachina

  alias Exlivery.Users.User

  def user_factory do
    %User{
      address: "Algum lugar na terra",
      age: 19,
      cpf: "123456789",
      email: "test@test.com",
      name: "Tarcisio"
    }
  end
end
