class RogueTalent < ActiveRecord::Base
  attr_accessible :name, :benefit, :bonus, :advanced

  validates :name, :benefit, :presence => true
end
