class Armor < ActiveRecord::Base
  belongs_to :armor_type
  
  validates_presence_of :name, :price, :armor_bonus, :max_dex_bonus, :check_penalty, :spell_failure, :weight, :armor_type_id
end
