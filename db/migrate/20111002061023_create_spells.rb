class CreateSpells < ActiveRecord::Migration
  def self.up
    create_table :spells do |t|
      t.string :name, :null => false
      t.text :description, :null => true
      t.string :casting_time, :null => false
      t.string :duration, :null => false
      t.string :range, :null => false
      t.string :effect, :null => true
      t.string :target, :null => true
      t.string :area, :null => true
      t.string :component, :null => false
      t.string :saving_throw, :null => true
      t.boolean :spell_resistance, :null => false
    end
  end

  def self.down
    drop_table :spells
  end
end
