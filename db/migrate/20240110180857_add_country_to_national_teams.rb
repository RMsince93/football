class AddCountryToNationalTeams < ActiveRecord::Migration[7.0]
  def change
    add_reference :national_teams, :country, null: false, foreign_key: true
  end
end
