class CreateWeaponGroups < ActiveRecord::Migration
  def self.up
    create_table :weapon_groups do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :weapon_groups
  end
end
