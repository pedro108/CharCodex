class RaceCharacterClass < ActiveRecord::Base
  belongs_to :race
  belongs_to :character_class
end
