class CharacterCharacterClass < ActiveRecord::Base
  belongs_to :character
  belongs_to :character_class
  belongs_to :favored_class_bonus

  validates :character_class_id, :character_id, :presence => true
  validates :hp_gained, :numericality => { :greater_than => 0, :allow_nil => true }

  before_create :calculate_level
  validate :hp_gained_not_set

  def gained_features
    character_class.character_class_features.keep_if do |f|
      !f.levels.nil? and f.levels.split(',').include?(self.level.to_s)
    end
  end

  private

  def calculate_level
    self.level = self.class.where(:character_id => self.character_id, :character_class_id => self.character_class_id).count + 1
  end

  def hp_gained_not_set

  end
end
