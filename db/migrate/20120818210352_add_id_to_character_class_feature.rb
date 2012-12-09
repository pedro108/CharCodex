class AddIdToCharacterClassFeature < ActiveRecord::Migration
  def self.up
    add_column :character_class_features, :id, :primary_key
  end

  def self.down
    remove_column :character_class_features, :id
  end
end
