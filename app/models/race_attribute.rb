class RaceAttribute < ActiveRecord::Base
  belongs_to :race
  belongs_to :attribute

  validates_presence_of :value
end
