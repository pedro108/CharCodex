class RaceTrait < ActiveRecord::Base
  belongs_to :race

  attr_accessible :name, :benefits, :bonus

  validates :name, :benefits, :presence => true
end
