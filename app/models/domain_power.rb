class DomainPower < ActiveRecord::Base
  belongs_to :domain

  validates_presence_of :required_level, :name

  validates_numericality_of :required_level, :less_than_or_equal_to => 20, :allow_nil => true
end
