class ModifyRaces < ActiveRecord::Migration
  def self.up
    add_column :races, :description, :text
    add_column :races, :size_id, :integer
    add_column :races, :arbitrary_attributes, :integer
  end

  def self.down
    remove_column :races, :description
    remove_column :races, :size_id
    remove_column :races, :arbitrary_attributes
  end
end
