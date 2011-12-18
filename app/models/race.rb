class Race < ActiveRecord::Base
  belongs_to :size
  has_many :attributes, :through => :race_attributes
  has_many :feats, :through => :race_traits

  validates_presence_of :name

  def traits
    self.feats
  end
end
