class RenameWeaponRelations < ActiveRecord::Migration
  def self.up
    rename_table :weapon_weapon_types, :weapon_types_weapons
    rename_table :weapon_weapon_features, :weapon_features_weapons
  end

  def self.down
    rename_table :weapon_types_weapons, :weapon_weapon_types
    rename_table :weapon_features_weapons, :weapon_weapon_features
  end
end
