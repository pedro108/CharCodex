class AddEquipmentSlotToArmor < ActiveRecord::Migration
  def self.up
    add_column :armors, :equipment_slot_id, :integer
  end

  def self.down
    remove_column :armors, :equipment_slot_id
  end
end
