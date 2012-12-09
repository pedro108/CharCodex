class CharacterClassFeaturesController < ApplicationController
  before_filter do |controller|
    controller.restrict_access(0)
    controller.nested_configuration
  end

  active_scaffold :character_class_feature do |config|
    config.columns = [:name, :required_level, :description, :bonus]
    config.list.columns = [:name, :required_level]
    config.show.columns = [:name, :required_level, :description]

    config.list.sorting = {:required_level => 'ASC'}

    config.columns[:required_level].form_ui = :slider
    config.columns[:description].form_ui = :text_editor
  end

  def nested_configuration
    active_scaffold_config.action_links.delete :show_search
  end
end 