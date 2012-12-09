class Race < ActiveRecord::Base
  belongs_to :size

  has_many :race_attributes

  has_and_belongs_to_many :feats, :join_table => :race_traits
  has_and_belongs_to_many :languages

  validates_presence_of :name

  validates_numericality_of :arbitrary_attributes, :allow_nil => true

  def traits
    self.feats
  end
end
