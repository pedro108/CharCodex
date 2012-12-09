class CharacterMagicArmor < ActiveRecord::Base
  belongs_to :character
  belongs_to :magic_armor

  validates_presence_of :quantity
  validates_numericality_of :quantity
end
