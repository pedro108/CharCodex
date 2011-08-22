class TerrainsController < ApplicationController
  before_filter do |controller|
    controller.restrict_access(2)
  end

  active_scaffold :terrain do |config|
    config.actions.exclude :show

    config.list.columns = [:miniature, :name, :is_object]
    config.create.columns = [:name, :miniature, :is_object, :dimension_x, :dimension_y, :type_id]
    config.update.columns = [:name, :miniature, :is_object, :dimension_x, :dimension_y, :type_id]

    config.columns[:is_object].form_ui = :select
    config.columns[:is_object].options = { :options => [["Nao", false], ["Sim", true]], :html_options => {:onchange => "toggle_terrain_dimension()"} }

    config.columns[:type_id].form_ui = :select
    config.columns[:type_id].options = { :options => [["Normal", "0"], ["Dificil", "1"], ["Intransponivel", "2"]] }

    config.columns[:dimension_x].css_class = "input_number"
    config.columns[:dimension_y].css_class = "input_number"
  end

  def before_create_save(record)
    record.user = current_user
  end
end
