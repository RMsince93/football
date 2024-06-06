class AddSeasonToTeams < ActiveRecord::Migration[7.0]
  def change
    add_reference :teams, :season, foreign_key: true
  end
end
