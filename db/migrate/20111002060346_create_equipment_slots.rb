class CreateEquipmentSlots < ActiveRecord::Migration
  def self.up
    create_table :equipment_slots do |t|
      t.string :name, :null => false
    end
  end

  def self.down
    drop_table :equipment_slots
  end
end
