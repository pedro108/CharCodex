class SpellsController < ApplicationController
  before_filter do |controller|
    controller.restrict_access(0)
  end

  active_scaffold :spell do |config|
    config.columns[:spell_schools].form_ui = :select

  end
end
