class Domain < ActiveRecord::Base
  has_and_belongs_to_many :deities
  belongs_to :domain
  has_many :feats, :through => :domain_powers
  has_many :spells, :through => :domain_spells

  validates_presence_of :name, :granted_powers

  def powers
    self.feats
  end
end
