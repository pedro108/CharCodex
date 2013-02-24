class RogueTalentsController < ApplicationController
  before_filter do |controller|
    controller.restrict_access(0)
  end

  active_scaffold :rogue_talent do |config|
    config.columns = [:name, :benefit, :advanced, :bonus]
    config.list.columns = [:name, :advanced]
    config.show.columns = [:name, :benefit, :advanced]
  end
end