class CreateWeaponTypes < ActiveRecord::Migration
  def self.up
    create_table :weapon_types do |t|
      t.string :name, :null => false
    end
  end

  def self.down
    drop_table :weapon_types
  end
end
