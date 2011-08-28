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

ActiveRecord::Schema.define(:version => 20110828231304) do

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

  create_table "encounters", :force => true do |t|
    t.string   "name",         :null => false
    t.integer  "adventure_id", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "grid",         :null => false
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

  create_table "terrains", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "type_id",                :null => false
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
    t.integer  "type_id",                            :null => false
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

end
