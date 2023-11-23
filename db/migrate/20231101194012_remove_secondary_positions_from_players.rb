class RemoveSecondaryPositionsFromPlayers < ActiveRecord::Migration[7.0]
  def change
    remove_column :players, :secondary_positions, :string
  end
end
