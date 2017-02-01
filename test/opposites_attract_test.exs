defmodule TestOpposites do
  use ExUnit.Case
  import Opposites, only: [inlove?: 2]

  test "simple cases" do
    assert inlove?(1,4) == true
    assert inlove?(2,2) == false
    assert inlove?(0,1) == true
    assert inlove?(0,0) == false
  end
end
