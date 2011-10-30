class SpellSchool < ActiveRecord::Base
  belongs_to :spell_school
  
  validates_presence_of :name, :is_descriptor
end
