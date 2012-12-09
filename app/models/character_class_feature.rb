class CharacterClassFeature < ActiveRecord::Base
  belongs_to :character_class

  validates_numericality_of :required_level, :less_than_or_equal_to => 20, :allow_nil => false
end
