class CharacterClassFeature < ActiveRecord::Base
  belongs_to :character_class
  belongs_to :feat

  validates_presence_of :required_level
end
