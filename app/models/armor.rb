class Armor < ActiveRecord::Base
  belongs_to :armor_type
  belongs_to :equipment_slot
  belongs_to :equipment_type
  
  validates_presence_of :name, :price, :armor_bonus, :max_dex_bonus, :check_penalty, :spell_failure, :weight, :armor_type_id

  validates_numericality_of :spell_failure, :less_than_or_equal_to => 100, :message => I18n.t('percentage_validation')
end
