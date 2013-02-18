class AddPriceTypeToWeapon < ActiveRecord::Migration
  def self.up
    add_column :weapons, :price_type_id, :integer
  end

  def self.down
    remove_column :weapons, :price_type_id
  end
end
