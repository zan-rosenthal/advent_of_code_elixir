defmodule OpenInput do
  @doc ~S"""
    Opens and parses a .txt file into an array of values given a file path.

  ## Examples

      iex> OpenInput.open("test/fixtures/open_input.txt")
      ["test", "OpenInput"]

  """
  def open(file_name) do
    {:ok, file} = File.read(file_name)

    String.split(file, "\n", trim: true)
  end
end
