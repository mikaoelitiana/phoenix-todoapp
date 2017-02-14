defmodule TodoApp.Repo.Migrations.CreateTodo do
  use Ecto.Migration

  def change do
    create table(:todos) do
      add :title, :string
      add :body, :string
      add :notes, :string
      add :user_id, references(:users)

      timestamps()
    end
    create index(:todos, [:title])

  end
end
