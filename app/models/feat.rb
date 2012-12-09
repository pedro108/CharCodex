class Feat < ActiveRecord::Base
  belongs_to :feat_type

  has_and_belongs_to_many :races, :join_table => :race_traits

	validates_presence_of :name, :description

end
