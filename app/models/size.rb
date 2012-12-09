class Size < ActiveRecord::Base
  has_many :races

  validates_presence_of :name
end