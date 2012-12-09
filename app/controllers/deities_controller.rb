class DeitiesController < ApplicationController
  before_filter do |controller|
    controller.restrict_access(0)
  end

  active_scaffold :deity do |config|
    config.list.columns = [:name, :alignment]

    config.columns[:alignment].form_ui = :select
    config.columns[:alignment].clear_link

    config.columns[:domains].form_ui = :select
    config.columns[:description].form_ui = :text_editor
  end
end
