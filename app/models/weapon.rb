class Weapon < ActiveRecord::Base
  belongs_to :weapon_group
  belongs_to :weapon_proficiency_level
  belongs_to :equipment_type

  has_and_belongs_to_many :weapon_features
  has_and_belongs_to_many :weapon_types

  validates_presence_of :name, :damage, :weapon_group_id, :weapon_proficiency_level_id, :weight, :price
end
