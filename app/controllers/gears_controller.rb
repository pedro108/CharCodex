class GearsController < ApplicationController
  before_filter do |controller|
    controller.restrict_access(0)
  end

  active_scaffold :gear do |config|
    config.columns = [:name, :description, :price, :price_type, :weight, :gear_category]
    config.show.columns.exclude :price_type
    config.list.columns = [:name, :price, :weight, :gear_category]

    config.columns[:description].css_class = "mceEditor"
    config.columns[:description].form_ui = :text_editor

    config.columns[:gear_category].form_ui = :select
    config.columns[:gear_category].clear_link
  end
end