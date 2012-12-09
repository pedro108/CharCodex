class AddPrimaryKeyToRelations < ActiveRecord::Migration
  def self.up
    add_column :race_attributes, :id, :primary_key
    add_column :character_skills, :id, :primary_key
    add_column :character_character_classes, :id, :primary_key
    add_column :character_armors, :id, :primary_key
    add_column :character_magic_armors, :id, :primary_key
    add_column :character_weapons, :id, :primary_key
    add_column :character_magic_weapons, :id, :primary_key
    add_column :character_magic_items, :id, :primary_key
    add_column :domain_powers, :id, :primary_key
    add_column :domain_spells, :id, :primary_key
  end

  def self.down
    remove_column :race_attributes, :id
    remove_column :character_skills, :id
    remove_column :character_character_classes, :id
    remove_column :character_armors, :id
    remove_column :character_magic_armors, :id
    remove_column :character_weapons, :id
    remove_column :character_magic_weapons, :id
    remove_column :character_magic_items, :id
    remove_column :domain_powers, :id
    remove_column :domain_spells, :id
  end
end
