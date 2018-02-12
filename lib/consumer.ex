defmodule Consumer do
  @moduledoc false
  use GenMQTT

  def start_link do
    GenMQTT.start_link(__MODULE__, nil)
  end

  def on_connect(state) do
    :ok = GenMQTT.subscribe(self, "house/bulb1", 0)
    {:ok, state}
  end

  def on_publish(["house","bulb1"], message, state) do
    IO.puts "Get msg: #{message}"
    {:ok, state}
  end

end
