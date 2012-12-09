class CharacterAttribute < ActiveRecord::Base
  belongs_to :character
  belongs_to :attribute

  validates_presence_of :value
end
