class AddAvatarToCoaches < ActiveRecord::Migration[7.0]
  def change
    add_column :coaches, :avatar, :string
  end
end
