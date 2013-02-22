class CreateSpellsPerDay < ActiveRecord::Migration
  def change
    create_table :spells_per_day do |t|
      t.belongs_to :character_class
      t.integer :class_level

      t.integer :zero_spell_level
      t.integer :first_spell_level
      t.integer :second_spell_level
      t.integer :third_spell_level
      t.integer :fourth_spell_level
      t.integer :fifth_spell_level
      t.integer :sixth_spell_level
      t.integer :seventh_spell_level
      t.integer :eighth_spell_level
      t.integer :ninth_spell_level
    end

    add_index :spells_per_day, :character_class_id
  end
end
