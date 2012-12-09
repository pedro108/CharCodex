class CreateWeaponWeaponTypes < ActiveRecord::Migration
  def self.up
    create_table :weapon_weapon_types do |t|
      t.integer :weapon_id, :null => false
      t.integer :weapon_type_id, :null => false
    end
  end

  def self.down
    drop_table :weapon_weapon_types
  end
end
