class CreateGears < ActiveRecord::Migration
  def self.up
    create_table :gears do |t|
      t.string :name, :null => false
      t.text :description, :null => true
      t.double :price, :null => false
      t.double :weight, :null => false
    end
  end

  def self.down
    drop_table :gears
  end
end
