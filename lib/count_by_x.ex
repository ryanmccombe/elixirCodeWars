defmodule Count do
  @doc """
  https://www.codewars.com/kata/count-by-x/train/elixir

  Create a function with two arguments that will return a list of length (n)
  with multiples of (x).

  Assume both the given number and the number of times to count will be positive
  numbers greater than 0.

  Return the results as an array (or list in Python, Haskell or Elixir).

  Examples:
  count_by(1, 10) == [1,2,3,4,5,6,7,8,9,10]
  count_by(2, 5) == [2,4,6,8,10]
  """
  def count_by(step, length) do
    for i <- 1..length, do: i * step
  end
end
