class AddPriceTypeIdToGears < ActiveRecord::Migration
  def self.up
    add_column :gears, :price_type_id, :integer
  end

  def self.down
    remove_column :gears, :price_type_id
  end
end
