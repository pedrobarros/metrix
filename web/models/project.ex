defmodule Metrix.Project do
  use Metrix.Web, :model

  schema "projects" do
    field :name, :string
    belongs_to :company, Metrix.Company

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name])
    |> validate_required([:name])
  end
end
