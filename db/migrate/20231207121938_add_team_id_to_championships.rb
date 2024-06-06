class AddTeamIdToChampionships < ActiveRecord::Migration[7.0]
  def change
    add_reference :championships, :team, foreign_key: true
  end
end
