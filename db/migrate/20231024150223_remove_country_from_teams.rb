class RemoveCountryFromTeams < ActiveRecord::Migration[7.0]
  def change
    remove_column :teams, :country, :string
  end
end
