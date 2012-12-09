class CharacterClassSpellsController < ApplicationController
  before_filter do |controller|
    controller.restrict_access(0)
    controller.nested_configuration
  end

  active_scaffold :character_class_spell do |config|
    config.columns = [:character_class, :spell_level]

    config.columns[:character_class].form_ui = :select
    config.columns[:character_class].clear_link
  end

  def nested_configuration
    active_scaffold_config.action_links.delete :show_search
    active_scaffold_config.action_links.delete :show
  end
end 