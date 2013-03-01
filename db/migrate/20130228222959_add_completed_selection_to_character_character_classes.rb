class AddCompletedSelectionToCharacterCharacterClasses < ActiveRecord::Migration
  def change
    add_column :character_character_classes, :completed_selection, :boolean, :default => false
  end
end
