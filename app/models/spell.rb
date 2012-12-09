class Spell < ActiveRecord::Base
  has_and_belongs_to_many :spell_descriptors

  belongs_to :spell_school, :conditions => "spell_school_id IS NULL"

  belongs_to :sub_spell_school,
             :class_name => "SpellSchool",
             :foreign_key => :sub_spell_school_id,
             :conditions => "spell_school_id IS NOT NULL"

  has_many :character_class_spells

  validates_presence_of :name, :casting_time, :duration, :range, :component

  validate :sub_spell_school_consistence

  def sub_spell_school_consistence
    if sub_spell_school.spell_school_id != spell_school_id
      errors.add :sub_spell_school, :invalid
    end
  end
end
