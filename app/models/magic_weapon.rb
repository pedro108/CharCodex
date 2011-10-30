class MagicWeapon < ActiveRecord::Base
  belongs_to :weapon
  
  validates_presence_of :name, :weapon_id, :construction
end
