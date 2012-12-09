class CreateMagicWeaponMagicProperties < ActiveRecord::Migration
  def self.up
    create_table :magic_weapon_magic_properties do |t|
      t.integer :magic_weapon_id, :null => false
      t.integer :magic_property_id, :null => false
    end
  end

  def self.down
    drop_table :magic_weapon_magic_properties
  end
end
