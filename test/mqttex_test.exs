defmodule MqttexTest do
  use ExUnit.Case
  doctest Mqttex

  test "greets the world" do
    assert Mqttex.hello() == :world
  end
end
