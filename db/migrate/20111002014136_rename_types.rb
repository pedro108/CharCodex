class RenameTypes < ActiveRecord::Migration
  def self.up
    rename_column :terrains, :type_id, :terrain_type
    rename_column :users, :type_id, :user_type
  end

  def self.down
    rename_column :terrains, :terrain_type, :type_id
    rename_column :users, :type_id, :user_type
  end
end
