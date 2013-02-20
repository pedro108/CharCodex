class RaceTraitsController < ApplicationController
  before_filter do |controller|
    controller.restrict_access(0)
  end

  active_scaffold :race_trait do |config|
    config.actions.exclude :search, :show
    config.columns = [:name, :benefits, :bonus]
    config.list.columns = [:name, :benefits]

    config.columns[:benefits].form_ui = :textarea
  end
end