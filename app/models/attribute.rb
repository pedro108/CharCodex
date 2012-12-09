class Attribute < ActiveRecord::Base
  validates_presence_of :name
  has_many :skills
  has_many :races, :through => :race_attributes
end
