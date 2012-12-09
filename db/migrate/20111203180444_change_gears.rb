class ChangeGears < ActiveRecord::Migration
  def self.up
    add_column :gears, :gear_category_id, :integer, :null => false
  end

  def self.down
    remove_column :gears, :gear_category_id
  end
end
