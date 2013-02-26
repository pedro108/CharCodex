class CharacterClassFeaturesController < ApplicationController
  before_filter do |controller|
    controller.restrict_access(0)
    controller.nested_configuration
  end

  active_scaffold :character_class_feature do |config|
    config.columns = [:name, :levels, :priority, :description, :bonus]
    config.list.columns = [:name, :levels, :priority]
    config.show.columns = [:name, :levels, :priority, :description]

    config.columns[:description].form_ui = :text_editor
    config.columns[:priority].form_ui = :slider
  end

  def nested_configuration
    active_scaffold_config.action_links.delete :show_search
  end
end 