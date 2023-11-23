class AddCountryToChampionships < ActiveRecord::Migration[7.0]
  def change
    add_reference :championships, :country, null: false, foreign_key: true
  end
end
