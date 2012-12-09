class ChangePriceFromGears < ActiveRecord::Migration
  def self.up
    change_column :gears, :price, :integer
  end

  def self.down
    change_column :gears, :price, :float
  end
end
