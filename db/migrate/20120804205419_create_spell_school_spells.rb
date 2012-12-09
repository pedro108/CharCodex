class CreateSpellSchoolSpells < ActiveRecord::Migration
  def self.up
    create_table :spell_schools_spells, :id => false do |t|
      t.integer :spell_id
      t.integer :spell_school_id
    end
  end

  def self.down
    drop_table :spell_schools_spells
  end
end
