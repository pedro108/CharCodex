class AddLevelToSpell < ActiveRecord::Migration
  def self.up
    add_column :spells, :level, :integer
    add_column :spells, :spell_school_id, :integer
    add_column :spells, :sub_spell_school_id, :integer

    remove_column :spell_schools, :is_descriptor
    remove_column :character_class_spells, :spell_level

    drop_table :spell_schools_spells

    create_table :spell_descriptors do |t|
      t.string :name
      t.text :description
    end
  end

  def self.down
    remove_column :spells, :level
    remove_column :spells, :spell_school_id
    remove_column :spells, :sub_spell_school_id

    add_column :spell_schools, :is_descriptor, :boolean
    add_column :character_class_spells, :spell_level, :integer

    drop_table :spell_descriptors
  end
end
