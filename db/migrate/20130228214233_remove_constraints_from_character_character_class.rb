class RemoveConstraintsFromCharacterCharacterClass < ActiveRecord::Migration
  def up
    change_column :character_character_classes, :level, :integer, :null => true
    change_column :character_character_classes, :hp_gained, :integer, :null => true
  end

  def down
    change_column :character_character_classes, :level, :integer, :null => false
    change_column :character_character_classes, :hp_gained, :integer, :null => false
  end
end
