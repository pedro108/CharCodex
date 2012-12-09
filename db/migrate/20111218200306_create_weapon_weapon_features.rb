class CreateWeaponWeaponFeatures < ActiveRecord::Migration
  def self.up
    create_table :weapon_weapon_features do |t|
      t.integer :weapon_id, :null => false
      t.integer :weapon_feature_id, :null => false
    end
  end

  def self.down
    drop_table :weapon_weapon_features
  end
end
