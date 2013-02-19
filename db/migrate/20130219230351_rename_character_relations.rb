class RenameCharacterRelations < ActiveRecord::Migration
  def change
    rename_table :characters_character_class_spells, :character_class_spells_characters
  end
end
