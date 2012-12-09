class CharacterClass < ActiveRecord::Base
  has_and_belongs_to_many :skills
  has_many :feats, :through => :character_class_features
  has_many :spells, :through => :character_class_spells

  def features
    self.feats
  end
end
