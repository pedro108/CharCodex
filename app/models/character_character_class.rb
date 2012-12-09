class CharacterCharacterClass < ActiveRecord::Base
  belongs_to :character
  belongs_to :character_class

  validates_presence_of :level, :hp_gained
end
