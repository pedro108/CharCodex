class CreateWeaponFeatures < ActiveRecord::Migration
  def self.up
    create_table :weapon_features do |t|
      t.string :name, :null => false
      t.text   :description, :null => true
    end
  end

  def self.down
    drop_table :weapon_features
  end
end
