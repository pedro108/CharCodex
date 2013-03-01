class AddTimestampsToCharacterCharacterClass < ActiveRecord::Migration
  def change
    add_column :character_character_classes, :created_at, :datetime
  end
end
