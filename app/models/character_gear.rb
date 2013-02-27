class CharacterGear < ActiveRecord::Base
  belongs_to :character
  belongs_to :gear

  attr_accessible :quantity
end
