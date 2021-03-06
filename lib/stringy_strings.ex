defmodule OneZeroSequencer do
  @doc """
  https://www.codewars.com/kata/stringy-strings/train/elixir

  write me a function stringy that takes a size and returns a string of
  alternating '1s' and '0s'.

  the string should start with a 1.

  a string with size 6 should return :'101010'.
  with size 4 should return : '1010'.
  with size 12 should return : '101010101010'.

  The size will always be positive and will only use whole numbers.
  """
  require Integer
  def stringy(size) do
    List.to_string(for i <- 1..size, do: Integer.to_string(rem(i, 2)))
  end

  # Alternatively
  # def stringy(size) do
  #   Stream.cycle([1,0])
  #   |> Enum.take(size)
  #   |> Enum.join
  # end
end
