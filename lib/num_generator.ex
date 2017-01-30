defmodule NumGenerator do
  @doc """
  https://www.codewars.com/kata/generate-range-of-integers/train/elixir
  Implement a function named generateRange(min, max, step), which takes three
  arguments and generates a range of integers from min to max, with the step.
  The first integer is the minimum value, the second is the maximum of the range
  and the third is the step. (min < max)

  Task
  Implement a function named

  generate_range(2, 10, 2) # should return array of [2,4,6,8,10]
  generate_range(1, 10, 3) # should return array of [1,4,7,10]

  which takes three arguments and generates a range of integers from min to max,
  with given step. The first is minimum value, second is maximum of range and
  the third is step.
  """
  def generate_range(min, max, step) do
    Enum.to_list(min..max)
    |> Enum.filter(fn(number) ->
      rem(number - min, step) == 0
    end)
  end

  # Better solutions: elixir has built in methods for this:
  #   :lists.seq(min, max, step)
  # or
  #   Enum.take_every(min..max,step)

end
