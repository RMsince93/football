class RemoveNationalityFromPlayers < ActiveRecord::Migration[7.0]
  def change
    remove_column :players, :nationality, :string
  end
end
