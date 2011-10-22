class CreateSpellSchools < ActiveRecord::Migration
  def self.up
    create_table :spell_schools do |t|
      t.string :name, :null => false
      t.text :description, :null => true
      t.references :spell_school, :null => true
      t.boolean :is_descriptor, :null => false
    end
  end

  def self.down
    drop_table :spell_schools
  end
end
