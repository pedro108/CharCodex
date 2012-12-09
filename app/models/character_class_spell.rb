class CharacterClassSpell < ActiveRecord::Base
  belongs_to :character_class
  belongs_to :spell

  validates_presence_of :spell_level
end
