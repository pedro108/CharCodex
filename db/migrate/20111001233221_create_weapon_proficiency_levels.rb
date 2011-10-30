class CreateWeaponProficiencyLevels < ActiveRecord::Migration
  def self.up
    create_table :weapon_proficiency_levels do |t|
      t.string :name
    end
  end

  def self.down
    drop_table :weapon_proficiency_levels
  end
end
