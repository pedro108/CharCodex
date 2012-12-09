class CreateCharacters < ActiveRecord::Migration
  def self.up
    change_table :characters do |t|
      t.references :deity, :null => false
      t.references :race, :null => false
      t.references :alignment, :null => false
      t.integer :experience_points, :null => false
      t.integer :progression_type, :null => false
      t.integer :hit_points, :null => false
      t.integer :fortitude, :null => false
      t.integer :reflex, :null => false
      t.integer :will, :null => false
      t.integer :armor_class_armor, :null => false
      t.integer :armor_class_shield, :null => false
      t.integer :armor_class_dex, :null => false
      t.integer :armor_class_size, :null => false
      t.integer :armor_class_natural, :null => false
      t.integer :armor_class_deflection, :null => false
      t.integer :armor_class_misc, :null => false
      t.integer :base_attack_bonus, :null => false
      t.integer :initiative, :null => false
      t.integer :cmb, :null => false
      t.integer :cmd, :null => false
      t.integer :damage_reduction, :null => true
      t.integer :spell_resistance, :null => true
      t.string  :gender, :null => true
      t.string  :height, :null => true
      t.string  :weight, :null => true
      t.string  :eyes, :null => true
      t.integer :age, :null => false
      t.float   :money, :null => false
      t.float   :weight_capacity, :null => false
    end
  end

  def self.down
    change_table :characters do |t|
      t.remove [:deity, :race, :alignment, :experience_points, :progression_type,
                :hit_points, :fortitude, :reflex, :will, :armor_class_armor, :armor_class_shield,
                :armor_class_dex, :armor_class_size, :armor_class_natural, :armor_class_deflection,
                :armor_class_misc, :flat_footed_armor_class, :base_attack_bonus, :initiative, :cmb, :cmd,
                :damage_reduction, :spell_resistance, :gender, :height, :weight, :eyes,
                :age, :money, :weight_capacity]
    end
  end
end
