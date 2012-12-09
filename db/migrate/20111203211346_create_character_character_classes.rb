class CreateCharacterCharacterClasses < ActiveRecord::Migration
  def self.up
    create_table :character_character_classes do |t|
      t.integer :character_id, :null => false
      t.integer :character_class_id, :null => false
      t.integer :level, :null => false
      t.integer :hp_gained, :null => false
    end
  end

  def self.down
    drop_table :character_character_classes
  end
end
