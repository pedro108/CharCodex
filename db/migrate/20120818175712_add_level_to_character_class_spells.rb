class AddLevelToCharacterClassSpells < ActiveRecord::Migration
  def self.up
    add_column :character_class_spells, :level, :integer
  end

  def self.down
    remove_column :character_class_spells, :level
  end
end
