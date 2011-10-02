class TerrainsController < ApplicationController
  before_filter do |controller|
    controller.restrict_access(2)
  end

  active_scaffold :terrain do |config|
    config.actions.exclude :show

    config.list.columns = [:miniature, :name, :is_object, :terrain_type]
    config.create.columns = [:name, :miniature, :is_object, :dimension_x, :dimension_y, :terrain_type]
    config.update.columns = [:name, :miniature, :is_object, :dimension_x, :dimension_y, :terrain_type]

    config.columns[:is_object].form_ui = :select
    config.columns[:terrain_type].form_ui = :select

    config.columns[:dimension_x].css_class = "input_number"
    config.columns[:dimension_y].css_class = "input_number"
  end

  def before_create_save(record)
    record.user = current_user
  end
end
