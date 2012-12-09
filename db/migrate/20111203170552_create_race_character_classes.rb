class CreateRaceCharacterClasses < ActiveRecord::Migration
  def self.up
    create_table :race_character_classes do |t|
      t.integer :race_id,             :null => false
      t.integer :character_class_id,  :null => false

      t.string :description,          :null => true
      t.text   :bonus,                :null => true
    end
  end

  def self.down
    drop_table :race_character_classes
  end
end
