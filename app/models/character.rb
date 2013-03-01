class Character < ActiveRecord::Base
	belongs_to :user
	belongs_to :adventure
  belongs_to :alignment
  belongs_to :race
  belongs_to :deity

  has_many :skills, :through => :character_skills
  has_many :character_classes, :through => :character_character_classes
  has_many :armors, :through => :character_armors
  has_many :magic_armors, :through => :character_magic_armors
  has_many :weapons, :through => :character_weapons
  has_many :magic_weapons, :through => :character_magic_weapons
  has_many :magic_items, :through => :character_magic_items
  has_many :gears, :through => :character_gears

  has_many :character_skills
  has_many :character_character_classes, :dependent => :destroy
  has_many :character_armors
  has_many :character_magic_armors
  has_many :character_weapons
  has_many :character_magic_weapons
  has_many :character_magic_items
  has_many :character_gears

  has_and_belongs_to_many :feats
  has_and_belongs_to_many :languages
  has_and_belongs_to_many :character_class_spells
  has_and_belongs_to_many :domains

	has_attached_file :photo, 		:styles => { :medium => "640x480>", :thumb => "100x100>" }
	has_attached_file :miniature, :styles => { :medium => "50x480>", :thumb => "50x50>" }

  validates :user_id, :presence => true

  accepts_nested_attributes_for :character_character_classes

  def last_created_class
    self.character_character_classes.order("created_at DESC").limit(1).first
  end
end
