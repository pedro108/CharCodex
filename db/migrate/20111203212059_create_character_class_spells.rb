class CreateCharacterClassSpells < ActiveRecord::Migration
  def self.up
    create_table :character_class_spells do |t|
      t.integer :character_class_id, :null => false
      t.integer :spell_id, :null => false
      t.integer :spell_level, :null => false
    end
  end

  def self.down
    drop_table :character_class_spells
  end
end
