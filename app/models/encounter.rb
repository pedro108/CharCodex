class Encounter < ActiveRecord::Base
	belongs_to :adventure
	
	validates :name, :grid, :presence => true
  validates :dimension, :numericality => { :greater_than => 0 }
end
