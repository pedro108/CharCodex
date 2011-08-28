class ChangeEncounter < ActiveRecord::Migration
  def self.up
    remove_column :encounters, :square_width
    remove_column :encounters, :square_height
    remove_column :encounters, :map

    add_column :encounters, :grid, :text, :null => false
  end

  def self.down
    add_column :encounters, :square_width, :integer
    add_column :encounters, :square_height, :integer
    add_column :encounters, :map, :text

    remove_column :encounters, :grid
  end
end
