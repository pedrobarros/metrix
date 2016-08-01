defmodule Metrix.EnvironmentTest do
  use Metrix.ModelCase

  alias Metrix.Environment

  @valid_attrs %{api_key: "some content", api_secret: "some content", name: "some content", token: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Environment.changeset(%Environment{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Environment.changeset(%Environment{}, @invalid_attrs)
    refute changeset.valid?
  end
end
