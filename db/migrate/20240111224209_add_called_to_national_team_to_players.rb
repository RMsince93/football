class AddCalledToNationalTeamToPlayers < ActiveRecord::Migration[7.0]
  def change
    add_column :players, :called_to_national_team, :boolean
  end
end
