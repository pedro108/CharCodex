class DomainPower < ActiveRecord::Base
  belongs_to :domain
  belongs_to :feat

  validates_presence_of :required_level

  def power
    self.feat
  end
end
