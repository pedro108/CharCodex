class RemovePrimaryKeyFromRelations < ActiveRecord::Migration
  def self.up
    rename_table :spell_spell_schools, :spell_schools_spells
    remove_column :spell_schools_spells, :id
  end

  def self.down
    rename_table :spell_schools_spells, :spell_spell_schools
  end
end
