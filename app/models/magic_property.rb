class MagicProperty < ActiveRecord::Base
  belongs_to :equipment_type

  validates_presence_of :name
end
