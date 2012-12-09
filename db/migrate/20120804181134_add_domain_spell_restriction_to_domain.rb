class AddDomainSpellRestrictionToDomain < ActiveRecord::Migration
  def self.up
    add_column :domains, :first_level_spell_restriction, :string
    add_column :domains, :second_level_spell_restriction, :string
    add_column :domains, :third_level_spell_restriction, :string
    add_column :domains, :fourth_level_spell_restriction, :string
    add_column :domains, :fifth_level_spell_restriction, :string
    add_column :domains, :sixth_level_spell_restriction, :string
    add_column :domains, :seventh_level_spell_restriction, :string
    add_column :domains, :eighth_level_spell_restriction, :string
    add_column :domains, :ninth_level_spell_restriction, :string
  end

  def self.down
    remove_column :domains, :first_level_spell_restriction
    remove_column :domains, :second_level_spell_restriction
    remove_column :domains, :third_level_spell_restriction
    remove_column :domains, :fourth_level_spell_restriction
    remove_column :domains, :fifth_level_spell_restriction
    remove_column :domains, :sixth_level_spell_restriction
    remove_column :domains, :seventh_level_spell_restriction
    remove_column :domains, :eighth_level_spell_restriction
    remove_column :domains, :ninth_level_spell_restriction
  end
end
