class CreateCharacterWeapons < ActiveRecord::Migration
  def self.up
    create_table :character_weapons do |t|
      t.integer :character_id, :null => false
      t.integer :weapon_id, :null => false
      t.boolean :equipped, :null => false
      t.boolean :offhand, :null => false
      t.boolean :dual_wield, :null => false
      t.integer :quantity, :null => false
    end

    add_column :character_armors, :quantity, :integer, :null => false
    add_column :character_magic_armors, :quantity, :integer, :null => false
  end

  def self.down
    drop_table :character_weapons

    remove_column :character_armors, :quantity
    remove_column :character_magic_armors, :quantity
  end
end
