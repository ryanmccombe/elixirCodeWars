defmodule Opposites do
  @doc """
  https://www.codewars.com/kata/opposites-attract/train/elixir

  Timmy & Sarah think they are in love, but around where they live, they will
  only know once they pick a flower each. If one of the flowers has an even
  number of petals and the other has an odd number of petals it means they are
  in love.

  Write a function that will take the number of petals of each flower and return
  true if they are in love and false if they aren't.
  """
  require Integer
  def inlove?(flower1, flower2) when Integer.is_odd(flower1) and Integer.is_odd(flower2), do: false
  def inlove?(flower1, flower2) when Integer.is_even(flower1) and Integer.is_even(flower2), do: false
  def inlove?(flower1, flower2), do: true
end
