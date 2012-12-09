class Level < ActiveRecord::Base
  validates_presence_of :level, :fastXP, :mediumXP, :slowXP
end