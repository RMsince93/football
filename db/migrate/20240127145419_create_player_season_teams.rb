class CreatePlayerSeasonTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :player_season_teams do |t|
      t.references :season, foreign_key: true
      t.references :player, foreign_key: true
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
