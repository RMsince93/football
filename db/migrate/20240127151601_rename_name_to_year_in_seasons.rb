class RenameNameToYearInSeasons < ActiveRecord::Migration[7.0]
  def change
    rename_column :seasons, :name, :year
  end
end
