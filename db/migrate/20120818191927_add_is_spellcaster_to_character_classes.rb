class AddIsSpellcasterToCharacterClasses < ActiveRecord::Migration
  def self.up
    add_column :character_classes, :spellcaster, :boolean
  end

  def self.down
    remove_column :character_classes, :spellcaster
  end
end
