class Size < ActiveRecord::Base
  has_many :races

  validates_presence_of :name

  validates :armor_class_modifier, :combat_maneuver_modifier, :stealth_modifier,
            :attack_modifier, :numericality => true
end
