class Gear < ActiveRecord::Base
  validates_presence_of :name, :price, :weight
end
