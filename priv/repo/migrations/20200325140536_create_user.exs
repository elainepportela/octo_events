defmodule OctoEvents.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:user, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :login, :string
      add :node_id, :string
      add :avatar_url, :string
      add :gravatar_id, :string
      add :url, :string
      add :html_url, :string
      add :followers_url, :string
      add :following_url, :string
      add :gists_url, :string
      add :starred_url, :string
      add :subscriptions_url, :string
      add :organizations_url, :string
      add :repos_url, :string
      add :events_url, :string
      add :received_events_url, :string
      add :type, :string
      add :site_admin, :boolean, default: false, null: false

      timestamps()
    end

  end
end
