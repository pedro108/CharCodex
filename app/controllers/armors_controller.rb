class ArmorsController < ApplicationController
  before_filter do |controller|
    controller.restrict_access(0)
  end

  active_scaffold :armor do |config|
    config.columns.exclude :equipment_type
    config.columns = [:name, :armor_type, :equipment_slot, :armor_bonus, :check_penalty, :max_dex_bonus,
                      :spell_failure, :description, :price, :weight]
    config.list.columns = [:name, :armor_type, :armor_bonus, :check_penalty, :max_dex_bonus]

    config.columns[:equipment_slot].form_ui = :select
    config.columns[:equipment_type].form_ui = :select
    config.columns[:equipment_type].options = {:include_blank => false}

    config.columns[:armor_type].form_ui = :select

    config.columns[:description].form_ui = :text_editor

  end
end
