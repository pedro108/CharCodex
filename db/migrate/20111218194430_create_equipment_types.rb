class CreateEquipmentTypes < ActiveRecord::Migration
  def self.up
    create_table :equipment_types do |t|
      t.string :name
    end

    add_column :armors, :equipment_type_id, :integer
    add_column :weapons, :equipment_type_id, :integer
    add_column :magic_properties, :equipment_type_id, :integer
  end

  def self.down
    drop_table :equipment_types

    remove_column :armors, :equipment_type_id
    remove_column :weapons, :equipment_type_id
    remove_column :magic_properties, :equipment_type_id
  end
end
