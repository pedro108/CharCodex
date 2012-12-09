class LanguagesController < ApplicationController
  before_filter do |controller|
    controller.restrict_access(0)
  end

  def custom_finder_options
    {:order => "name"}
  end

  active_scaffold :language do |config|
    config.actions.exclude :create, :delete

    config.columns[:description].form_ui = :text_editor
  end
end 