class SpellPerDay < ActiveRecord::Base
  belongs_to :character_class

  attr_accessible :class_level, :character_class_id, :zero_spell_level, :first_spell_level, :second_spell_level, :third_spell_level, :fourth_spell_level, :fifth_spell_level, :sixth_spell_level, :seventh_spell_level, :eighth_spell_level, :ninth_spell_level

  validates :character_class_id, :presence => true
  validates :class_level, :numericality => { :greater_than => 0 }

  validates :zero_spell_level, :first_spell_level, :second_spell_level, :third_spell_level, :fourth_spell_level,
            :fifth_spell_level, :sixth_spell_level, :seventh_spell_level, :eighth_spell_level, :ninth_spell_level,
            :numericality => { :allow_nil => true, :greater_than => 0 }
end
