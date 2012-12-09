class RaceAttributesController < ApplicationController
  before_filter do |controller|
    controller.restrict_access(0)
  end

  active_scaffold :race_attribute do |config|


    config.columns[:attribute].form_ui = :select
  end
end 