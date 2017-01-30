defmodule Evenator do
  @doc """
  https://www.codewars.com/kata/is-it-even/train/elixir
  In this Kata we are passing a number (n) into a function.
  Your code will determine if the number passed is even (or not).
  The function needs to return either a true or false.
  Numbers may be positive or negative, integers or floats.
  Floats are considered UNeven for this kata.
  """
  def even?(n) do
    is_integer(n) and rem(n, 2) == 0
  end

  # Alternative with Guard Clauses
  require Integer
  def even?(n) when is_integer(n), do: Integer.is_even(n)
  def even?(n) when is_float(n), do: false
end
