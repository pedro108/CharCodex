class CharacterClassSpell < ActiveRecord::Base
  belongs_to :character_class
  belongs_to :spell

  validates_numericality_of :spell_level, :less_than_or_equal_to => 9, :greater_than_or_equal_to => 0, :allow_nil => false
end
