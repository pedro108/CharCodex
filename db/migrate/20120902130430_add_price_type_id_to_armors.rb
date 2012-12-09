class AddPriceTypeIdToArmors < ActiveRecord::Migration
  def self.up
    add_column :armors, :price_type_id, :integer
  end

  def self.down
    remove_column :armors, :price_type_id
  end
end
