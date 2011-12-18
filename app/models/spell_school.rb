class SpellSchool < ActiveRecord::Base
  belongs_to :spell_school
  has_and_belongs_to_many :spells
  
  validates_presence_of :name, :is_descriptor
end
