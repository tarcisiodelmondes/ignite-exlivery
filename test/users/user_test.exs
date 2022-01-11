defmodule Exlivery.Users.UserTest do
  use ExUnit.Case

  alias Exlivery.Users.User

  import Exlivery.Factory

  describe "build/5" do
    test "when all params are valid, returns the user" do
      response =
        User.build(
          "Tarcisio",
          "test@test.com",
          "Algum lugar na terra",
          "123456789",
          19
        )

      expected_response = {:ok, build(:user)}

      assert response == expected_response
    end

    test "when there are invalid, returns an error" do
      response = User.build("Tarcisio", "test@test.com", "Algum lugar na terra", "123456789", 15)

      expected_response = {:error, "Invalid parameters"}

      assert response == expected_response
    end
  end
end
