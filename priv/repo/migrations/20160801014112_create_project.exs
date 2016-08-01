defmodule Metrix.Repo.Migrations.CreateProject do
  use Ecto.Migration

  def change do
    create table(:projects) do
      add :name, :string
      add :company_id, references(:companies, on_delete: :nothing)

      timestamps()
    end
    create index(:projects, [:company_id])

  end
end
