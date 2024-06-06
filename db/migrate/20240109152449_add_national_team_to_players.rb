class AddNationalTeamToPlayers < ActiveRecord::Migration[7.0]
  def change
    add_reference :players, :national_team, foreign_key: true
  end
end
