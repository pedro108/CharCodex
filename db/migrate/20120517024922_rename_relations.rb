class RenameRelations < ActiveRecord::Migration
  def self.up
    rename_table :character_domains, :characters_domains
    rename_table :character_feats, :characters_feats
    rename_table :character_gears, :characters_gears
    rename_table :character_languages, :characters_languages
    rename_table :character_character_class_spells, :characters_character_class_spells
  end

  def self.down
    rename_table :characters_domains, :character_domains
    rename_table :characters_feats, :character_feats
    rename_table :characters_gears, :character_gears
    rename_table :characters_languages, :character_languages
    rename_table :characters_character_class_spells, :character_character_class_spells
  end
end
