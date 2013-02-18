class DropWeaponRelationsPrimaryKeys < ActiveRecord::Migration
  def self.up
    remove_column :weapon_features_weapons, :id
    remove_column :weapon_types_weapons, :id
  end

  def self.down
    add_column :weapon_features_weapons, :id, :integer
    add_column :weapon_types_weapons, :id, :integer
  end
end
