class MagicWeapon < ActiveRecord::Base
  belongs_to :weapon

  has_and_belongs_to_many :magic_properties
  
  validates_presence_of :name, :weapon_id, :construction
end
