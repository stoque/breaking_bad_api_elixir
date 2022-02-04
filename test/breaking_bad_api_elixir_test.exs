defmodule BreakingBadApiElixirTest do
  use ExUnit.Case
  doctest BreakingBadApiElixir

  test "greets the world" do
    assert BreakingBadApiElixir.hello() == :world
  end
end
