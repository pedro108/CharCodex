class Weapon < ActiveRecord::Base
  belongs_to :weapon_group
  belongs_to :weapon_proficiency_level
  belongs_to :equipment_slot
  belongs_to :price_type

  has_and_belongs_to_many :weapon_features
  has_and_belongs_to_many :weapon_types

  validates :name, :damage, :weapon_group_id, :weapon_proficiency_level_id, :weight, :price,
            :price_type_id, :critical_threat, :critical_power, :presence => true
  validates :price, :numericality => { :greater_than_or_equal_to => 0.0 }

  #TODO: incluir um before validate para definir o slot de equipamento
end
