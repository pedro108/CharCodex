class AddIdToCharacterClassSpells < ActiveRecord::Migration
  def self.up
    add_column :character_class_spells, :id, :primary_key
  end

  def self.down
    remove_column :character_class_spells, :id
  end
end
