# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120902130430) do

  create_table "adventures", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id",    :null => false
  end

  create_table "adventures_monsters", :id => false, :force => true do |t|
    t.integer "adventure_id"
    t.integer "monster_id"
  end

  add_index "adventures_monsters", ["adventure_id"], :name => "adventures_index"
  add_index "adventures_monsters", ["monster_id", "adventure_id"], :name => "monsters_index"

  create_table "alignments", :force => true do |t|
    t.string "name", :null => false
  end

  create_table "armor_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "armors", :force => true do |t|
    t.string  "name",              :null => false
    t.text    "description"
    t.float   "price",             :null => false
    t.integer "armor_bonus",       :null => false
    t.integer "max_dex_bonus",     :null => false
    t.integer "check_penalty",     :null => false
    t.float   "spell_failure",     :null => false
    t.float   "weight",            :null => false
    t.integer "armor_type_id"
    t.integer "equipment_slot_id"
    t.integer "equipment_type_id"
    t.integer "price_type_id"
  end

  create_table "attributes", :force => true do |t|
    t.string "name", :null => false
  end

  create_table "bonus_spells", :force => true do |t|
    t.integer "ability_score", :null => false
    t.integer "spell_level",   :null => false
    t.integer "bonus",         :null => false
  end

  create_table "character_armors", :force => true do |t|
    t.integer "character_id"
    t.integer "armor_id"
    t.boolean "equipped"
    t.integer "quantity",     :null => false
  end

  create_table "character_attributes", :id => false, :force => true do |t|
    t.integer "value",        :null => false
    t.integer "character_id", :null => false
    t.integer "attribute_id", :null => false
  end

  create_table "character_character_classes", :force => true do |t|
    t.integer "character_id",       :null => false
    t.integer "character_class_id", :null => false
    t.integer "level",              :null => false
    t.integer "hp_gained",          :null => false
  end

  create_table "character_class_features", :force => true do |t|
    t.integer "character_class_id"
    t.integer "required_level"
    t.string  "name"
    t.text    "description"
    t.text    "bonus"
  end

  create_table "character_class_spells", :force => true do |t|
    t.integer "character_class_id", :null => false
    t.integer "spell_id",           :null => false
    t.integer "spell_level"
  end

  create_table "character_classes", :force => true do |t|
    t.string  "name",            :null => false
    t.text    "description"
    t.integer "dice_id",         :null => false
    t.float   "base_multiplier", :null => false
    t.boolean "fortitude",       :null => false
    t.boolean "reflex",          :null => false
    t.boolean "will",            :null => false
    t.boolean "spellcaster"
    t.integer "skill_ranks"
  end

  create_table "character_classes_skills", :id => false, :force => true do |t|
    t.integer "character_class_id", :null => false
    t.integer "skill_id",           :null => false
  end

  create_table "character_magic_armors", :force => true do |t|
    t.integer "character_id"
    t.integer "magic_armor_id"
    t.boolean "equipped"
    t.integer "quantity",       :null => false
  end

  create_table "character_magic_items", :force => true do |t|
    t.integer "character_id",  :null => false
    t.integer "magic_item_id", :null => false
    t.boolean "equipped",      :null => false
    t.integer "quantity",      :null => false
  end

  create_table "character_magic_weapons", :force => true do |t|
    t.integer "character_id",    :null => false
    t.integer "magic_weapon_id", :null => false
    t.integer "quantity",        :null => false
    t.boolean "equipped",        :null => false
    t.boolean "offhand",         :null => false
    t.boolean "dual_wield",      :null => false
  end

  create_table "character_skills", :force => true do |t|
    t.integer  "character_id"
    t.integer  "skill_id"
    t.integer  "rank"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "subskill"
  end

  create_table "character_weapons", :force => true do |t|
    t.integer "character_id", :null => false
    t.integer "weapon_id",    :null => false
    t.boolean "equipped",     :null => false
    t.boolean "offhand",      :null => false
    t.boolean "dual_wield",   :null => false
    t.integer "quantity",     :null => false
  end

  create_table "characters", :force => true do |t|
    t.string   "name"
    t.integer  "user_id",                               :null => false
    t.integer  "adventure_id"
    t.integer  "level",                  :default => 1, :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "miniature_file_name"
    t.string   "miniature_content_type"
    t.integer  "miniature_file_size"
    t.datetime "miniature_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "deity_id",                              :null => false
    t.integer  "race_id",                               :null => false
    t.integer  "alignment_id",                          :null => false
    t.integer  "experience_points",                     :null => false
    t.integer  "progression_type",                      :null => false
    t.integer  "hit_points",                            :null => false
    t.integer  "fortitude",                             :null => false
    t.integer  "reflex",                                :null => false
    t.integer  "will",                                  :null => false
    t.integer  "armor_class_armor",                     :null => false
    t.integer  "armor_class_shield",                    :null => false
    t.integer  "armor_class_dex",                       :null => false
    t.integer  "armor_class_size",                      :null => false
    t.integer  "armor_class_natural",                   :null => false
    t.integer  "armor_class_deflection",                :null => false
    t.integer  "armor_class_misc",                      :null => false
    t.integer  "base_attack_bonus",                     :null => false
    t.integer  "initiative",                            :null => false
    t.integer  "cmb",                                   :null => false
    t.integer  "cmd",                                   :null => false
    t.integer  "damage_reduction"
    t.integer  "spell_resistance"
    t.string   "gender"
    t.string   "height"
    t.string   "weight"
    t.string   "eyes"
    t.integer  "age",                                   :null => false
    t.float    "money",                                 :null => false
    t.float    "weight_capacity",                       :null => false
    t.integer  "armor_class_dodge"
  end

  create_table "characters_character_class_spells", :id => false, :force => true do |t|
    t.integer "character_id",             :null => false
    t.integer "character_class_spell_id", :null => false
  end

  create_table "characters_domains", :id => false, :force => true do |t|
    t.integer "character_id", :null => false
    t.integer "domain_id",    :null => false
  end

  create_table "characters_feats", :id => false, :force => true do |t|
    t.integer "character_id", :null => false
    t.integer "feat_id",      :null => false
  end

  create_table "characters_gears", :id => false, :force => true do |t|
    t.integer "character_id", :null => false
    t.integer "gear_id",      :null => false
  end

  create_table "characters_languages", :id => false, :force => true do |t|
    t.integer "character_id", :null => false
    t.integer "language_id",  :null => false
  end

  create_table "comments", :force => true do |t|
    t.integer  "content_id"
    t.text     "comment"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "content_locales", :force => true do |t|
    t.integer  "content_id",                :null => false
    t.text     "content_text",              :null => false
    t.string   "locale",       :limit => 2, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title",                     :null => false
  end

  create_table "contents", :force => true do |t|
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "daily_spells", :force => true do |t|
    t.integer "spell_level",        :null => false
    t.integer "character_class_id", :null => false
    t.integer "quantity",           :null => false
  end

  create_table "deities", :force => true do |t|
    t.string  "name",         :null => false
    t.text    "description"
    t.integer "alignment_id", :null => false
  end

  create_table "deities_domains", :id => false, :force => true do |t|
    t.integer "deity_id",  :null => false
    t.integer "domain_id", :null => false
  end

  create_table "dices", :force => true do |t|
    t.integer "value"
    t.string  "name"
  end

  create_table "domain_powers", :force => true do |t|
    t.integer "domain_id"
    t.integer "required_level"
    t.string  "name"
    t.text    "description"
    t.text    "bonus"
  end

  create_table "domains", :force => true do |t|
    t.string  "name"
    t.string  "description"
    t.integer "domain_id"
    t.integer "first_level_spell_id"
    t.integer "second_level_spell_id"
    t.integer "third_level_spell_id"
    t.integer "fourth_level_spell_id"
    t.integer "fifth_level_spell_id"
    t.integer "sixth_level_spell_id"
    t.integer "seventh_level_spell_id"
    t.integer "eighth_level_spell_id"
    t.integer "ninth_level_spell_id"
    t.string  "first_level_spell_restriction"
    t.string  "second_level_spell_restriction"
    t.string  "third_level_spell_restriction"
    t.string  "fourth_level_spell_restriction"
    t.string  "fifth_level_spell_restriction"
    t.string  "sixth_level_spell_restriction"
    t.string  "seventh_level_spell_restriction"
    t.string  "eighth_level_spell_restriction"
    t.string  "ninth_level_spell_restriction"
  end

  create_table "encounters", :force => true do |t|
    t.string   "name",         :null => false
    t.integer  "adventure_id", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "grid",         :null => false
  end

  create_table "equipment_slots", :force => true do |t|
    t.string "name", :null => false
  end

  create_table "equipment_types", :force => true do |t|
    t.string "name"
  end

  create_table "feat_types", :force => true do |t|
    t.string "name"
  end

  create_table "feats", :force => true do |t|
    t.string  "name",          :null => false
    t.text    "description",   :null => false
    t.integer "feat_type_id",  :null => false
    t.text    "bonus",         :null => false
    t.text    "prerequisites", :null => false
    t.string  "benefits"
  end

  add_index "feats", ["feat_type_id"], :name => "index_feats_on_feat_type_id"

  create_table "gear_categories", :force => true do |t|
    t.string "name"
  end

  create_table "gears", :force => true do |t|
    t.string  "name",             :null => false
    t.text    "description"
    t.integer "price"
    t.float   "weight"
    t.integer "gear_category_id", :null => false
    t.integer "price_type_id"
  end

  create_table "languages", :force => true do |t|
    t.string "name",        :null => false
    t.text   "description"
  end

  create_table "languages_races", :id => false, :force => true do |t|
    t.integer "race_id",     :null => false
    t.integer "language_id", :null => false
  end

  create_table "levels", :force => true do |t|
    t.integer "level",           :null => false
    t.integer "fastXP",          :null => false
    t.integer "mediumXP",        :null => false
    t.integer "slowXP",          :null => false
    t.integer "badSavingThrow",  :null => false
    t.integer "goodSavingThrow", :null => false
  end

  create_table "magic_armor_magic_properties", :force => true do |t|
    t.integer "magic_armor_id",    :null => false
    t.integer "magic_property_id", :null => false
  end

  create_table "magic_armors", :force => true do |t|
    t.string  "name",         :null => false
    t.text    "description"
    t.integer "armor_id",     :null => false
    t.text    "construction", :null => false
  end

  create_table "magic_item_groups", :force => true do |t|
    t.string "name",        :null => false
    t.text   "description"
  end

  create_table "magic_items", :force => true do |t|
    t.string  "name",                :null => false
    t.text    "description"
    t.integer "equipment_slot_id"
    t.text    "construction",        :null => false
    t.float   "price",               :null => false
    t.text    "bonus"
    t.float   "weight",              :null => false
    t.integer "magic_item_group_id", :null => false
  end

  create_table "magic_properties", :force => true do |t|
    t.string  "name",              :null => false
    t.text    "description"
    t.text    "bonus"
    t.integer "level_cost"
    t.float   "price"
    t.integer "equipment_type_id"
  end

  create_table "magic_weapon_magic_properties", :force => true do |t|
    t.integer "magic_weapon_id",   :null => false
    t.integer "magic_property_id", :null => false
  end

  create_table "magic_weapons", :force => true do |t|
    t.string  "name",         :null => false
    t.text    "description"
    t.integer "weapon_id",    :null => false
    t.text    "construction", :null => false
  end

  create_table "monsters", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "miniature_file_name"
    t.string   "miniature_content_type"
    t.integer  "miniature_file_size"
    t.datetime "miniature_updated_at"
    t.integer  "user_id",                :null => false
    t.integer  "dimension",              :null => false
  end

  create_table "price_types", :force => true do |t|
    t.string  "name"
    t.string  "description"
    t.integer "priority"
  end

  create_table "race_attributes", :force => true do |t|
    t.integer "race_id",      :null => false
    t.integer "attribute_id", :null => false
    t.integer "value",        :null => false
  end

  create_table "race_character_classes", :id => false, :force => true do |t|
    t.integer "race_id",            :null => false
    t.integer "character_class_id", :null => false
    t.string  "description"
    t.text    "bonus"
  end

  create_table "race_traits", :id => false, :force => true do |t|
    t.integer "race_id", :null => false
    t.integer "feat_id", :null => false
  end

  create_table "races", :force => true do |t|
    t.string  "name",                 :null => false
    t.text    "description"
    t.integer "size_id"
    t.integer "arbitrary_attributes"
  end

  create_table "sizes", :force => true do |t|
    t.string  "name",                 :null => false
    t.integer "armor_class_modifier"
  end

  create_table "skills", :force => true do |t|
    t.string  "name",                             :null => false
    t.text    "description"
    t.integer "attribute_id",                     :null => false
    t.boolean "have_subskill", :default => false, :null => false
  end

  create_table "spell_descriptors", :force => true do |t|
    t.string "name"
    t.text   "description"
  end

  create_table "spell_descriptors_spells", :id => false, :force => true do |t|
    t.integer "spell_id"
    t.integer "spell_descriptor_id"
  end

  create_table "spell_schools", :force => true do |t|
    t.string  "name",            :null => false
    t.text    "description"
    t.integer "spell_school_id"
  end

  create_table "spell_schools_spells", :id => false, :force => true do |t|
    t.integer "spell_id"
    t.integer "spell_school_id"
  end

  create_table "spells", :force => true do |t|
    t.string  "name",                :null => false
    t.text    "description"
    t.string  "casting_time",        :null => false
    t.string  "duration",            :null => false
    t.string  "range",               :null => false
    t.string  "effect"
    t.string  "target"
    t.string  "area"
    t.string  "component",           :null => false
    t.string  "saving_throw"
    t.boolean "spell_resistance",    :null => false
    t.integer "level"
    t.integer "spell_school_id"
    t.integer "sub_spell_school_id"
  end

  create_table "terrains", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "terrain_type",           :null => false
    t.boolean  "is_object",              :null => false
    t.integer  "user_id"
    t.string   "miniature_file_name"
    t.string   "miniature_content_type"
    t.integer  "miniature_file_size"
    t.datetime "miniature_updated_at"
    t.integer  "dimension_x",            :null => false
    t.integer  "dimension_y",            :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "login",                              :null => false
    t.string   "name",                               :null => false
    t.integer  "user_type",                          :null => false
    t.string   "email",                              :null => false
    t.string   "crypted_password",                   :null => false
    t.string   "password_salt",                      :null => false
    t.string   "persistence_token",                  :null => false
    t.string   "single_access_token",                :null => false
    t.string   "perishable_token",                   :null => false
    t.integer  "login_count",         :default => 0, :null => false
    t.integer  "failed_login_count",  :default => 0, :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "weapon_features", :force => true do |t|
    t.string "name",        :null => false
    t.text   "description"
  end

  create_table "weapon_groups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "weapon_proficiency_levels", :force => true do |t|
    t.string "name"
  end

  create_table "weapon_types", :force => true do |t|
    t.string "name", :null => false
  end

  create_table "weapon_weapon_features", :force => true do |t|
    t.integer "weapon_id",         :null => false
    t.integer "weapon_feature_id", :null => false
  end

  create_table "weapon_weapon_types", :force => true do |t|
    t.integer "weapon_id",      :null => false
    t.integer "weapon_type_id", :null => false
  end

  create_table "weapons", :force => true do |t|
    t.string  "name",                        :null => false
    t.text    "description"
    t.string  "damage",                      :null => false
    t.integer "weapon_proficiency_level_id", :null => false
    t.integer "weapon_group_id"
    t.integer "critical_threat"
    t.integer "critical_power"
    t.integer "range"
    t.float   "weight",                      :null => false
    t.float   "price",                       :null => false
    t.text    "obs",                         :null => false
    t.integer "equipment_type_id"
  end

end
