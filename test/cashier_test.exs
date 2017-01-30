defmodule TestCashier do
  use ExUnit.Case
  import Cashier, only: [format_money: 1]

  test "basic tests" do
    assert format_money(39.99) == "$39.99"
    assert format_money(39.90) == "$39.90"
    assert format_money(39.0) == "$39.00"
  end
end
