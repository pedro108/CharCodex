class CreateCharacterMagicWeapons < ActiveRecord::Migration
  def self.up
    create_table :character_magic_weapons do |t|
      t.integer :character_id, :null => false
      t.integer :magic_weapon_id, :null => false
      t.integer :quantity, :null => false
      t.boolean :equipped, :null => false
      t.boolean :offhand, :null => false
      t.boolean :dual_wield, :null => false
    end
  end

  def self.down
    drop_table :character_magic_weapons
  end
end
