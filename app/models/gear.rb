class Gear < ActiveRecord::Base
  belongs_to :gear_category
  validates_presence_of :name, :price, :weight, :gear_category
end
