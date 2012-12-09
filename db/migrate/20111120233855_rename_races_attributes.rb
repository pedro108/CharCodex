class RenameRacesAttributes < ActiveRecord::Migration
  def self.up
    rename_table :races_attributes, :race_attributes
  end

  def self.down
    rename_table :race_attributes, :races_attributes
  end
end
