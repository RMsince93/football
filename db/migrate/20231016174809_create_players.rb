class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :age
      t.string :nationality
      t.integer :shirt_number
      t.integer :market_value
      t.string :position
      t.string :secondary_positions
      t.float :height
      t.float :weight
      t.string :preferred_foot
      t.integer :goals
      t.integer :assists
      t.integer :yellow_cards
      t.integer :red_cards
      t.integer :goals_suffered
      t.integer :clean_sheets

      t.timestamps
    end
  end
end
