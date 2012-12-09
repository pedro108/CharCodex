class SpellSchoolsController < ApplicationController
  before_filter do |controller|
    controller.restrict_access(0)
  end

  active_scaffold :spell_school do |config|
    config.columns = [:name, :description, :spell_school]
    config.list.columns = [:name, :spell_school]

    config.list.sorting = {:name => 'ASC'}

    config.columns[:description].form_ui = :text_editor

    config.columns[:spell_school].form_ui = :select
    config.columns[:spell_school].clear_link
  end
end 