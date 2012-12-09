class RenameRaceLanguages < ActiveRecord::Migration
  def self.up
    rename_table :race_languages, :languages_races

    remove_column :languages_races, :id
  end

  def self.down
    add_column :languages_races, :id, :integer

    rename_table :languages_races, :race_languages
  end
end
