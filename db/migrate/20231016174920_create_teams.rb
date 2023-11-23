class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :stadium
      t.integer :stadium_capacity
      t.string :country
      t.float :age_average
      t.integer :total_players
      t.integer :trophies

      t.timestamps
    end
  end
end
