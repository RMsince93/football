class AddAvatarToTeams < ActiveRecord::Migration[7.0]
  def change
    add_column :teams, :avatar, :string
  end
end
