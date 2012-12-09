class DomainSpell < ActiveRecord::Base
  belongs_to :domain
  belongs_to :spell
end
