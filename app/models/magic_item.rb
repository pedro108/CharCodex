class MagicItem < ActiveRecord::Base
  belongs_to :equipment_slot
  belongs_to :magic_item_group
  
  validates_presence_of :name, :construction, :price, :weight
end
