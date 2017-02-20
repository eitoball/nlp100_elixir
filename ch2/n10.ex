defmodule Nlp100.Ch2.N10 do
  def call(file) do
    { :ok, io } = File.open(file)
    IO.stream(io, :line) |> Enum.count
  end
end
