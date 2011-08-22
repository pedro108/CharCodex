class Adventure < ActiveRecord::Base
  has_many :encounters
	has_many :characters
	belongs_to :user
  has_and_belongs_to_many :monsters

	validates_presence_of :name

end
