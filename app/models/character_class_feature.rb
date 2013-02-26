class CharacterClassFeature < ActiveRecord::Base
  belongs_to :character_class

  validates :name, :presence => true
end
