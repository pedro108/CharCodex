class RemoveCreatedAtFromCharacterClass < ActiveRecord::Migration
  def self.up
    remove_column :character_classes, :created_at
    remove_column :character_classes, :updated_at
  end

  def self.down
    add_column :character_classes, :updated_at, :datetime
    add_column :character_classes, :created_at, :datetime
  end
end
