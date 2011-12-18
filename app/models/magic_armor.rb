class MagicArmor < ActiveRecord::Base
  belongs_to :armor
  has_many :magic_properties
  
  validates_presence_of :name, :armor_id, :construction
end
