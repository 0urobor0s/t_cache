defmodule TCacheTest do
  use ExUnit.Case
  doctest TCache

  test "cache/0" do
    assert TCache.cache() == "Some test"
  end

  test "cache_component/1" do
    assert {%Phoenix.LiveView.Rendered{static: [""]}, ""} = TCache.cache_component("mail")
  end
end
