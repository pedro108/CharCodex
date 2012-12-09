class SpellSchool < ActiveRecord::Base
  belongs_to :spell_school, :conditions => "spell_school_id IS NULL"
  has_and_belongs_to_many :spells
  
  validates_presence_of :name
end
