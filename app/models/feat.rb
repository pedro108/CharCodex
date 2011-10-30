class Feat < ActiveRecord::Base
	validates_presence_of :name, :description, :type, :bonus, :prerequisites
end
