class RemoveFieldsFromTeams < ActiveRecord::Migration[7.0]
  def change
    remove_column :teams, :age_average, :float
    remove_column :teams, :total_players, :integer
  end
end
