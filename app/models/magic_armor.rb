class MagicArmor < ActiveRecord::Base
  belongs_to :armor
  
  validates_presence_of :name, :armor_id, :construction
end
