class CreateCharacterMagicArmors < ActiveRecord::Migration
  def self.up
    create_table :character_magic_armors do |t|
      t.integer :character_id
      t.integer :magic_armor_id
      t.boolean :equipped
    end
  end

  def self.down
    drop_table :character_magic_armors
  end
end
