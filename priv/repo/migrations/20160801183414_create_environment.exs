defmodule Metrix.Repo.Migrations.CreateEnvironment do
  use Ecto.Migration

  def change do
    create table(:environments) do
      add :name, :string
      add :token, :string
      add :api_key, :string
      add :api_secret, :string
      add :project_id, references(:projects, on_delete: :nothing)

      timestamps()
    end
    create index(:environments, [:project_id])

  end
end
