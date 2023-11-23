class ChangeContinentIdToAllowNullInChampionships < ActiveRecord::Migration[7.0]
  def change
    change_column :championships, :continent_id, :integer, null: true
  end
end
