class CharacterCharacterClass < ActiveRecord::Base
  belongs_to :character
  belongs_to :character_class

  validates :level, :character_class_id, :character_id, :presence => true
  validates :hp_gained, :numericality => { :greater_than => 0, :allow_nil => true }
end
