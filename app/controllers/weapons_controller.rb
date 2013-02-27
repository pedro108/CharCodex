class WeaponsController < ApplicationController
  before_filter do |controller|
    controller.restrict_access(0)
  end

  active_scaffold :weapon do |config|
    config.list.columns = [:name, :weapon_proficiency_level, :weapon_group, :damage, :price, :weight]
    config.columns = [:name, :description, :weapon_proficiency_level, :weapon_group, :equipment_type,
                      :damage, :price, :price_type, :weight, :critical_threat, :critical_power,
                      :range, :two_handed, :weapon_types, :weapon_features]

    config.show.columns.exclude :price_type

    config.columns[:weapon_group].form_ui = :select
    config.columns[:weapon_proficiency_level].form_ui = :select
    config.columns[:weapon_types].form_ui = :select
    config.columns[:weapon_features].form_ui = :select
    config.columns[:equipment_type].form_ui = :select

    config.columns[:description].form_ui = :text_editor

    config.columns[:price_type].css_class = 'hidden'
  end
end 