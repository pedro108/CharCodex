class SkillsController < ApplicationController
  before_filter do |controller|
    controller.restrict_access(0)
  end

  active_scaffold :skill do |config|
    config.actions.exclude :create
    config.columns = [:name, :attribute, :description]
    config.list.columns = [:name, :attribute]

    config.columns[:name].options = { :readonly => true }

    config.columns[:description].css_class = 'mceEditor'
    config.columns[:description].form_ui = :text_editor

    config.columns[:attribute].form_ui = :select
    config.columns[:attribute].options = { :html_options => { :disabled => true } }
  end

end



