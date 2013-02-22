class CharacterClass < ActiveRecord::Base
  belongs_to :hit_dice, :foreign_key => :dice_id, :class_name => "Dice"

  has_and_belongs_to_many :skills

  has_many :character_class_spells
  has_many :spells, :through => :character_class_spells

  has_many :spells_per_day, :class_name => 'SpellPerDay'
  has_many :character_class_features

  has_attached_file :photo, :styles => { :medium => "640x480>", :thumb => "100x100>" }

  def spellcaster_type
    I18n.t('spellcaster_type')[spellcaster_type_id]
  end
end
