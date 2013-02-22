class Race < ActiveRecord::Base
  belongs_to :size

  has_many :race_attributes
  has_many :race_traits

  has_and_belongs_to_many :languages

  has_attached_file :photo, :styles => { :medium => "640x480>", :thumb => "100x100>" }

  validates_presence_of :name

  validates_numericality_of :arbitrary_attributes, :allow_nil => true
end
