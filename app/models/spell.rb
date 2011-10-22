class Spell < ActiveRecord::Base
  validates_presence_of :name, :casting_time, :duration, :range, :component, :spell_resistence
end
