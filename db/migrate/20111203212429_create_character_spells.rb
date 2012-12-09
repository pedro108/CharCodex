class CreateCharacterSpells < ActiveRecord::Migration
  def self.up
    create_table :character_character_class_spells do |t|
      t.integer :character_id, :null => false
      t.integer :character_class_spell_id, :null => false
    end
  end

  def self.down
    drop_table :character_character_class_spells
  end
end
