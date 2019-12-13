defmodule Day01.Solution01 do
  require OpenInput
  require Enum

  @doc ~S"""
    Calculates the sum of fuel needed for all modules

  ## Examples

      iex> Day01.Solution01.calculate_fuel
      5233250

  """

  def calculate_fuel do
    OpenInput.open('puzzles/day_01/puzzle_01/input.txt')
      |>Enum.map(&(calculate_fuel(&1)))
      |>Enum.sum
  end


  @doc ~S"""
    Calculates fuel needed for a single module given its mass.
    Caclulations also include fuel needed for mass added by fuel.

  ## Examples

      iex> Day01.Solution01.calculate_fuel(-2)
      0
      iex> Day01.Solution01.calculate_fuel("1969")
      966
      iex> Day01.Solution01.calculate_fuel(1969)
      966

  """
  def calculate_fuel(mass) when is_bitstring(mass), do: mass |> parse_int |> calculate_fuel
  def calculate_fuel(mass) when is_integer(mass) and mass <=6, do: 0
  def calculate_fuel(mass) when is_integer(mass) and mass > 0 do
    mass
    |> Integer.floor_div(3)
    |> subtract_two
    |> calculate_fuel_for_additional_fuel
  end

  def calculate_fuel_for_additional_fuel(mass), do: mass + calculate_fuel(mass)
  def subtract_two(x), do: x-2
  def parse_int(string), do: string |> Integer.parse |> elem(0)
end
