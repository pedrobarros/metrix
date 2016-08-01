defmodule Metrix.Environment do
  use Metrix.Web, :model

  schema "environments" do
    field :name, :string
    field :token, :string
    field :api_key, :string
    field :api_secret, :string
    belongs_to :project, Metrix.Project

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :token, :api_key, :api_secret])
    |> validate_required([:name, :token, :api_key, :api_secret])
  end
end
