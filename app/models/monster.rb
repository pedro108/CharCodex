class Monster < ActiveRecord::Base
  before_save :default_values
  belongs_to :user

  has_and_belongs_to_many :adventures

	has_attached_file :photo, 		:styles => { :medium => "640x480>", :thumb => "100x100>" }
	has_attached_file :miniature, :styles => { :thumb => "50x50>" }

  validates_presence_of :name, :photo, :miniature

  def default_values
    self.dimension = 1 unless self.dimension
  end
end
