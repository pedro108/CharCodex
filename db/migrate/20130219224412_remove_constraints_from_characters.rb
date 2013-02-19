class RemoveConstraintsFromCharacters < ActiveRecord::Migration
  def change
    change_column :characters, :age, :integer, :null => true
    change_column :characters, :deity_id, :integer, :null => true
    change_column :characters, :race_id, :integer, :null => true
    change_column :characters, :alignment_id, :integer, :null => true
    change_column :characters, :experience_points, :integer, :default => 0
    change_column :characters, :progression_type, :integer, :null => true
    change_column :characters, :hit_points, :integer, :null => true
    change_column :characters, :fortitude, :integer, :null => true
    change_column :characters, :reflex, :integer, :null => true
    change_column :characters, :will, :integer, :null => true

    change_column :characters, :armor_class_armor, :integer, :default => 0
    change_column :characters, :armor_class_shield, :integer, :default => 0
    change_column :characters, :armor_class_dex, :integer, :default => 0
    change_column :characters, :armor_class_size, :integer, :default => 0
    change_column :characters, :armor_class_natural, :integer, :default => 0
    change_column :characters, :armor_class_deflection, :integer, :default => 0
    change_column :characters, :armor_class_misc, :integer, :default => 0
    change_column :characters, :armor_class_dodge, :integer, :default => 0

    change_column :characters, :base_attack_bonus, :integer, :default => 0
    change_column :characters, :initiative, :integer, :default => 0
    change_column :characters, :cmb, :integer, :default => 0
    change_column :characters, :cmd, :integer, :default => 0

    change_column :characters, :money, :float, :default => 0
    change_column :characters, :weight_capacity, :float, :default => 0
  end
end
