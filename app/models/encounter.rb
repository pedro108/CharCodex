class Encounter < ActiveRecord::Base
	belongs_to :adventure
	
	validates_presence_of :name, :grid
end
