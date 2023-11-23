class AddPositionToPlayers < ActiveRecord::Migration[7.0]
  def change
    add_reference :players, :position, null: false, foreign_key: true
  end
end
