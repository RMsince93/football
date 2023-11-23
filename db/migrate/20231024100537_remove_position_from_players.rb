class RemovePositionFromPlayers < ActiveRecord::Migration[7.0]
  def change
    remove_column :players, :position, :string
  end
end
