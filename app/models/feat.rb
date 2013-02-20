class Feat < ActiveRecord::Base
  belongs_to :feat_type

	validates_presence_of :name, :description
end
