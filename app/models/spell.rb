class Spell < ActiveRecord::Base
  has_and_belongs_to_many :spell_schools

  validates_presence_of :name, :casting_time, :duration, :range, :component, :spell_resistence
end
