defmodule ElixirTestApp.Repo.Migrations.AddTest do
  use Ecto.Migration

  def change do
    create table(:test) do
      add :title, :string

      timestamps()
    end
  end
end
