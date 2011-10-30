class BonusSpell < ActiveRecord::Base
  validates_presence_of :ability_score, :spell_level, :bonus
end
