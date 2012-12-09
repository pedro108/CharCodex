class CharacterMagicItem < ActiveRecord::Base
  belongs_to :character
  belongs_to :magic_item

  validates_presence_of :quantity
  validates_numericality_of :quantity
end
