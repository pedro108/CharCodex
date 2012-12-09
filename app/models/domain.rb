class Domain < ActiveRecord::Base
  has_and_belongs_to_many :deities
  belongs_to :domain, :conditions => "domain_id IS NULL"

  has_many :domain_powers

  belongs_to :first_level_spell, :foreign_key => :first_level_spell_id, :class_name => "Spell"
  belongs_to :second_level_spell, :foreign_key => :second_level_spell_id, :class_name => "Spell"
  belongs_to :third_level_spell, :foreign_key => :third_level_spell_id, :class_name => "Spell"
  belongs_to :fourth_level_spell, :foreign_key => :fourth_level_spell_id, :class_name => "Spell"
  belongs_to :fifth_level_spell, :foreign_key => :fifth_level_spell_id, :class_name => "Spell"
  belongs_to :sixth_level_spell, :foreign_key => :sixth_level_spell_id, :class_name => "Spell"
  belongs_to :seventh_level_spell, :foreign_key => :seventh_level_spell_id, :class_name => "Spell"
  belongs_to :eighth_level_spell, :foreign_key => :eighth_level_spell_id, :class_name => "Spell"
  belongs_to :ninth_level_spell, :foreign_key => :ninth_level_spell_id, :class_name => "Spell"

  validates_presence_of :name, :description
end
