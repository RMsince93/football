class RemoveActualChampionFromChampionships < ActiveRecord::Migration[7.0]
  def change
    remove_column :championships, :actual_champion, :string
  end
end
