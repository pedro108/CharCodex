class Level < ActiveRecord::Base
  validates_presence_of :level, :fasXP, :mediumXP, :slowXP
end
