class ChangeGearFields < ActiveRecord::Migration
  def self.up
    change_column :gears, :price, :float, :null => true
    change_column :gears, :weight, :float, :null => true
  end

  def self.down
    change_column :gears, :price, :float, :null => false
    change_column :gears, :weight, :float, :null => false
  end
end
