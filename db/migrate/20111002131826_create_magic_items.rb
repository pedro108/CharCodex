class CreateMagicItems < ActiveRecord::Migration
  def self.up
    create_table :magic_items do |t|
      t.string :name, :null => false
      t.text :description, :null => true
      t.references :equipment_slot, :null => true
      t.text :construction, :null => false
      t.double :price, :null => false
      t.text :bonus, :null => true
      t.double :weight, :null => false
    end
  end

  def self.down
    drop_table :magic_items
  end
end
