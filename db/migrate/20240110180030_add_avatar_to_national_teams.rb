class AddAvatarToNationalTeams < ActiveRecord::Migration[7.0]
  def change
    add_column :national_teams, :avatar, :string
  end
end
