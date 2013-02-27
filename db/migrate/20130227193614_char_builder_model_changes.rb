class CharBuilderModelChanges < ActiveRecord::Migration
  def change
    remove_column :characters, :armor_class_size, :cmb, :cmd, :fortitude, :reflex, :will, :hit_points,
                               :initiative

    add_column :characters, :strength, :integer
    add_column :characters, :dexterity, :integer
    add_column :characters, :constitution, :integer
    add_column :characters, :intelligence, :integer
    add_column :characters, :wisdom, :integer
    add_column :characters, :charisma, :integer
    add_column :characters, :description, :text
    add_column :characters, :historic_background, :text
    add_column :characters, :hair_color, :string

    rename_column :characters, :eyes, :eyes_color
    rename_column :characters, :weight_capacity, :weight_carried

    add_column :character_classes, :initial_gold, :string

    add_column :sizes, :movement, :integer
    add_column :sizes, :armor_class_modifier, :integer
    add_column :sizes, :combat_maneuver_modifier, :integer
    add_column :sizes, :stealth_modifier, :integer
    add_column :sizes, :attack_modifier, :integer

    drop_table :favored_classes

    create_table :favored_class_bonuses do |t|
      t.string :benefit
      t.text   :bonus
    end

    add_column :character_character_classes, :favored_class_bonus_id, :integer
    add_column :character_character_classes, :favored_class, :boolean
    add_column :character_character_classes, :familiar, :boolean, :default => false

    create_table :character_gears do |t|
      t.belongs_to :character
      t.belongs_to :gear

      t.integer :quantity
    end

    add_index :character_gears, :character_id

    create_table :equipment_types do |t|
      t.string :name
    end

    add_column :armors, :equipment_type_id, :integer
    change_column :armors, :price, :integer

    add_column :magic_items, :charges, :integer
    change_column :magic_items, :price, :integer

    change_column :magic_properties, :price, :integer

    remove_column :weapons, :equipment_slot_id
    remove_column :weapons, :obs
    add_column :weapons, :equipment_type_id, :integer
    add_column :weapons, :two_handed, :boolean
    change_column :weapons, :price, :integer
  end
end
