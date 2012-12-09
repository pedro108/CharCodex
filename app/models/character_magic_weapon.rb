class CharacterMagicWeapon < ActiveRecord::Base
  belongs_to :character
  belongs_to :weapon

  validates_presence_of :quantity
  validates_numericality_of :quantity
end
