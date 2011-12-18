class EquipmentSlot < ActiveRecord::Base
  has_many :armors

  validates_presence_of :name
end
