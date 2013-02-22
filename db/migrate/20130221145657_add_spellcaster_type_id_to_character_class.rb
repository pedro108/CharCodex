class AddSpellcasterTypeIdToCharacterClass < ActiveRecord::Migration
  def change
    add_column :character_classes, :spellcaster_type_id, :integer
    rename_column :character_classes, :spellcaster, :spontaneous_spellcaster
  end
end
