defmodule OpenInput do
  @doc ~S"""
    Opens and parses a .txt file given a file path.

  ## Examples

      iex> OpenInput.open("test/fixtures/open_input.txt")
      {:ok, "test\nOpenInput\nopen\n"}

  """
  def open(file_name) do
    # require IEx; IEx.pry
    {:ok, file} = File.read(file_name)

    {:ok, file}
  end
end
