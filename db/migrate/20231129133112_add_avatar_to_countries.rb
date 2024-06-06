class AddAvatarToCountries < ActiveRecord::Migration[7.0]
  def change
    add_column :countries, :avatar, :string
  end
end
