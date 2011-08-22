class Character < ActiveRecord::Base
	belongs_to :user
	belongs_to :adventure

	validates_presence_of :name

	has_attached_file :photo, 		:styles => { :medium => "640x480>", :thumb => "100x100>" }
	has_attached_file :miniature, :styles => { :medium => "50x480>", :thumb => "50x50>" }
end
