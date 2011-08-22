class Terrain < ActiveRecord::Base
  before_save :default_values
  belongs_to :user

	has_attached_file :miniature, :styles => { :thumb => "50x50>" }

  validates_presence_of :name, :type_id
  validates_numericality_of :dimension_x, :dimension_y

  def default_values
    self.dimension_x = 1 unless self.dimension_x
    self.dimension_y = 1 unless self.dimension_y
  end
end
