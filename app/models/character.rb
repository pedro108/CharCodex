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

  after_initialize :init_derived_data, :parse_features, :parse_traits, :parse_favored_classes, :parse_equipment,
                   :set_extra_cmd
  before_save :update_level

  attr_accessor :extra_initiative, :extra_hit_points, :extra_feats, :extra_skill_ranks, :movement,
                :armor_class, :extra_reflex, :extra_fortitude, :extra_will, :extra_cmb, :extra_cmd,
                :spell_resistance, :damage_reduction

  def init_derived_data
    @extra_initiative = 0
    @extra_hit_points = 0
    @extra_feats = 0
    @extra_skill_ranks = 0
    @movement = 30
    @extra_reflex = 0
    @extra_fortitude = 0
    @extra_will = 0
    @extra_cmb = 0
    @extra_cmd = 0
    @spell_resistance = 0
    @damage_reduction = 0
    @armor_class = {
        armor: 0,
        shield: 0,
        natural: 0,
        deflection: 0,
        dodge: 0,
        misc: 0
    }
  end

  def parse_features
    character_character_classes.group(:character_class_id).each do |c_c|
      c_c.character_class.character_class_features.each do |f|
        eval(f.bonus, binding) unless f.bonus.nil?
      end
    end
  end

  def parse_traits
    return if race.nil?

    race.race_traits.each do |trait|
      eval(trait.bonus, binding) unless trait.bonus.nil?
    end
  end

  def parse_favored_classes
    character_character_classes.each do |c_c|
      eval(c_c.favored_class_bonus.bonus, binding) if c_c.favored_class? and !c_c.favored_class_bonus.nil?
    end
  end

  def parse_equipment

  end

  def set_extra_cmd
    self.extra_cmd = armor_class[:deflection] + armor_class[:dodge]
  end

  def total_initiative
    dexterity_modifier + extra_initiative
  end

  def hit_points
    character_character_classes.map { |c| c.hp_gained}.reduce(:+) + constitution_modifier + extra_hit_points
  end

  def armor_class_dexterity
    dexterity_modifier
  end

  def total_armor_class
    10 + armor_class.values.reduce(:+) + armor_class_dexterity + race.size.armor_class_modifier
  end

  def touch_armor_class
    10 + armor_class_dexterity + armor_class[:dodge] + armor_class[:deflection] + race.size.armor_class_modifier
  end

  def flat_footed_armor_class
    10 + armor_class[:armor] + armor_class[:shield] + armor_class[:natural] + armor_class[:deflection] + race.size.armor_class_modifier
  end

  def total_fortitude
    base_fortitude + constitution_modifier + extra_fortitude
  end

  def total_reflex
    base_reflex + dexterity_modifier + extra_reflex
  end

  def total_will
    base_will + wisdom_modifier + extra_will
  end

  def base_attack_bonus
    @base_attack_bonus = 0
    self.character_class_levels.each do |c|
      @base_attack_bonus += (c.total_levels * c.character_class.base_multiplier).floor
    end
    @base_attack_bonus
  end

  def total_cmb
    base_attack_bonus + strength_modifier + race.size.combat_maneuver_modifier + extra_cmb
  end

  def total_cmd
    10 + base_attack_bonus + strength_modifier + dexterity_modifier + race.size.combat_maneuver_modifier + extra_cmd
  end

  def encumbered_movement
    if movement.eql?(20) and race.size.name.eql?('Small')
      15
    else
      20
    end
  end

  def character_class_levels
    self.character_character_classes.select("*, count(*) AS total_levels").group(:character_class_id).order(:created_at)
  end

  def last_created_class
    self.character_character_classes.order("created_at DESC").limit(1).first
  end

  def method_missing(method, *args, &block)
    if method.to_s =~ /^([a-z]+)_modifier$/
      ((self.send($1) - 10)/2).floor
    elsif method.to_s =~ /^base_([a-z]+)$/
      value = 0
      self.character_class_levels.each do |c|
        value += Level.find_by_level(c.total_levels).send("#{c.character_class.send("#{$1}?") ? 'good' : 'bad'}_saving_throw")
      end
      value
    else
      super
    end
  end

  private

  def update_level
    self.level = self.character_character_classes.count
  end
end
