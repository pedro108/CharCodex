class Attribute < ActiveRecord::Base
  validates_presence_of :name
  has_many :skills

  has_many :races, :through => :race_attributes
  has_many :race_attributes

  def abbr
    name.slice(0,3).upcase
  end
end
