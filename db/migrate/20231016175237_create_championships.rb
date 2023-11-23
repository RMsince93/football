class CreateChampionships < ActiveRecord::Migration[7.0]
  def change
    create_table :championships do |t|
      t.string :name
      t.integer :number_of_teams
      t.integer :total_players
      t.string :actual_champion
      t.string :country

      t.timestamps
    end
  end
end
