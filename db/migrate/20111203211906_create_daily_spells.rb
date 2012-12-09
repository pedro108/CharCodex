class CreateDailySpells < ActiveRecord::Migration
  def self.up
    create_table :daily_spells do |t|
      t.integer :spell_level, :null => false
      t.integer :class_id, :null => false
      t.integer :quantity, :null => false
    end
  end

  def self.down
    drop_table :daily_spells
  end
end
