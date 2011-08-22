class Encounter < ActiveRecord::Base
	belongs_to :adventure
	
	validates_presence_of :name, :map, :square_width, :square_height
end
