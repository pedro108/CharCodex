class RenameLevelFromCharacterClassSpell < ActiveRecord::Migration
  def self.up
    rename_column :character_class_spells, :level, :spell_level
  end

  def self.down
    rename_column :character_class_spells, :spell_level, :level
  end
end
