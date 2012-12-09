class Gear < ActiveRecord::Base
  belongs_to :gear_category
  belongs_to :price_type

  validates_presence_of :name, :gear_category
end
