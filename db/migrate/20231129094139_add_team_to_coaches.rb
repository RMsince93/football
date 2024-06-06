class AddTeamToCoaches < ActiveRecord::Migration[7.0]
  def change
    add_reference :coaches, :team, foreign_key: true
  end
end
