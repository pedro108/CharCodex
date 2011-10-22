class MagicItem < ActiveRecord::Base
  belongs_to :equipment_slot
  
  validates_presence_of :name, :construction, :price, :weight
end
