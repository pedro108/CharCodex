class CharacterSkill < ActiveRecord::Base
  belongs_to :character
  belongs_to :skill

  attr_accessible :rank, :subskill, :character_id, :skill_id

  validates :rank, :numericality => true
end
