class AddPriorityToPriceType < ActiveRecord::Migration
  def self.up
    add_column :price_types, :priority, :integer
  end

  def self.down
    remove_column :price_types, :priority
  end
end
