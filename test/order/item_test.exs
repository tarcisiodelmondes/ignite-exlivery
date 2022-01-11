defmodule Exlivery.Orders.ItemTest do
  use ExUnit.Case

  alias Exlivery.Orders.Item

  import Exlivery.Factory

  describe "build/4" do
    test "when all params are valid, returns an item" do
      response = Item.build("Pizza de queijo", :pizza, 30, 4)

      expected_response = {:ok, build(:item)}

      assert response == expected_response
    end

    test "when there ia an invalid category, returns an error" do
      response = Item.build("Pizza de queijo", :banana, 30, 4)

      expected_response = {:error, "Invalid parameters"}

      assert response == expected_response
    end

    test "when there ia an invalid price, returns an error" do
      response = Item.build("Pizza de queijo", :pizza, "banana", 4)

      expected_response = {:error, "invalid price"}

      assert response == expected_response
    end

    test "when there ia an invalid quantity, returns an error" do
      response = Item.build("Pizza de queijo", :pizza, 30, 0)

      expected_response = {:error, "Invalid parameters"}

      assert response == expected_response
    end
  end
end
