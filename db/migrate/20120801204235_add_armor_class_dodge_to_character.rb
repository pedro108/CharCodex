class AddArmorClassDodgeToCharacter < ActiveRecord::Migration
  def self.up
    add_column :characters, :armor_class_dodge, :integer
    add_column :sizes, :armor_class_modifier, :integer
  end

  def self.down
    remove_column :characters, :armor_class_dodge
    remove_column :sizes, :armor_class_modifier
  end
end
