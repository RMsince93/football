class RemoveFieldsFromChampionships < ActiveRecord::Migration[7.0]
  def change
    remove_column :championships, :number_of_teams, :string
    remove_column :championships, :total_players, :string
  end
end
