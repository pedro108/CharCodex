class CreateSpellSpellSchools < ActiveRecord::Migration
  def self.up
    create_table :spell_spell_schools do |t|
      t.integer :spell_id, :null => false
      t.integer :spell_school_id, :null => false
    end
  end

  def self.down
    drop_table :spell_spell_schools
  end
end
