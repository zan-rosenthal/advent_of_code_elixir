defmodule Day01.Solution01 do
  require OpenInput
  require Enum

  @doc ~S"""
    Calculates the sum of fuel needed for all modules

  ## Examples

      iex> Day01.Solution01.calculate_fuel
      3490663

  """

  @spec calculate_fuel :: number
  def calculate_fuel do
    OpenInput.open('puzzles/day_01/puzzle_01/input.txt')
      |>Enum.map(&(Integer.parse(&1)))
      |>Enum.map(fn({ int, _binary }) -> calculate_fuel(int)end)
      |> Enum.sum
  end

  @doc ~S"""
    Calculates fuel needed for a single module given its mass

  ## Examples

      iex> Day01.Solution01.calculate_fuel(19)
      3

  """
  @spec calculate_fuel(integer) :: integer
  def calculate_fuel (fuel) do
    Integer.floor_div(fuel, 3) - 3
  end
end
