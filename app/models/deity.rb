class Deity < ActiveRecord::Base
  has_and_belongs_to_many :domains

  validates_presence_of :name
end
