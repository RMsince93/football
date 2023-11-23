class CreateChampionshipsTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :championships_teams do |t|
      t.references :championship, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true
      t.timestamps
    end
  end
end
