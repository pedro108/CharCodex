class CreateCharacterMagicItems < ActiveRecord::Migration
  def self.up
    create_table :character_magic_items do |t|
      t.integer :character_id, :null => false
      t.integer :magic_item_id, :null => false
      t.boolean :equipped, :null => false
      t.integer :quantity, :null => false
    end
  end

  def self.down
    drop_table :character_magic_items
  end
end
