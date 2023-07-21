defmodule FizzBuzz do
  def buildCase(file_name) do
    case File.read(file_name) do
      {:ok, file} -> file
      {:error, reason} -> reason
    end
  end

  def buildPattern(file_name) do
    file = File.read(file_name)
    handle_file_read(file)
  end

  def buildPipe(file_name) do
    file_name
    |> File.read()
    |> handle_file_read()
  end

  def handle_file_read({:ok, result}), do: result
  def handle_file_read({:error, reason}), do: reason
end
