class DropEquipmentType < ActiveRecord::Migration
  def self.up
    remove_column :armors, :equipment_type_id
    rename_column :weapons, :equipment_type_id, :equipment_slot_id

    drop_table :equipment_types
  end

  def self.down
  end
end
