class CharacterClass < ActiveRecord::Base
  belongs_to :hit_dice, :foreign_key => :dice_id, :class_name => "Dice"

  has_and_belongs_to_many :skills
  has_many :character_class_spells
  has_many :spells, :through => :character_class_spells

  has_many :character_class_features
end
