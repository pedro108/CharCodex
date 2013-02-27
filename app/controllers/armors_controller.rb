class ArmorsController < ApplicationController
  before_filter do |controller|
    controller.restrict_access(0)
  end

  active_scaffold :armor do |config|
    config.columns = [:name, :armor_type, :equipment_slot, :equipment_type, :armor_bonus, :max_dex_bonus,
                      :check_penalty, :spell_failure, :description, :price, :price_type, :weight]
    config.show.columns.exclude :price_type
    config.list.columns = [:name, :armor_type, :armor_bonus, :max_dex_bonus, :price, :weight]

    config.columns[:equipment_slot].form_ui = :select
    config.columns[:equipment_type].form_ui = :select
    config.columns[:armor_type].form_ui = :select
    config.columns[:description].form_ui = :text_editor

    config.columns[:price_type].css_class = 'hidden'
  end
end
