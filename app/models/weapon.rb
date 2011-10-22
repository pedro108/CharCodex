class Weapon < ActiveRecord::Base
  belongs_to :weapon_group
  belongs_to :weapon_proficiency_level

  validates_presence_of :name, :damage, :weapon_group_id, :weapon_proficiency_level_id, :weight, :price
end
