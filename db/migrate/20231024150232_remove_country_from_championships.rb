class RemoveCountryFromChampionships < ActiveRecord::Migration[7.0]
  def change
    remove_column :championships, :country, :string
  end
end
