class AddContinentToCountries < ActiveRecord::Migration[7.0]
  def change
    add_reference :countries, :continent, foreign_key: true
  end
end
