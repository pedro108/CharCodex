class CharacterCharacterClass < ActiveRecord::Base
  belongs_to :character
  belongs_to :character_class
  belongs_to :favored_class_bonus

  validates :character_class_id, :character_id, :presence => true
  validates :hp_gained, :numericality => { :greater_than => 0, :allow_nil => true }

  before_create :calculate_level

  private

  def calculate_level
    self.level = self.class.where(:character_id => self.character_id, :character_class_id => self.character_class_id).count + 1
  end
end
