class CreateMagicProperties < ActiveRecord::Migration
  def self.up
    create_table :magic_properties do |t|
      t.string :name, :null => false
      t.text :description, :null => true
      t.text :bonus, :null => true
      t.integer :level_cost, :null => true
      t.double :price, :null => true
    end
  end

  def self.down
    drop_table :magic_properties
  end
end
