class FeatsController < ApplicationController
  before_filter do |controller|
    controller.restrict_access(0)
  end

  active_scaffold :feat do |config|
    config.create.columns = [:name, :benefits, :description, :feat_type, :bonus, :prerequisites]
    config.update.columns = [:name, :benefits, :description, :feat_type, :bonus, :prerequisites]
    config.list.columns = [:name, :feat_type, :benefits]
    config.show.columns = [:name, :feat_type, :benefits, :description]

    config.columns[:description].form_ui = :text_editor

    config.columns[:feat_type].form_ui = :select
    config.columns[:feat_type].options = {:include_blank => false}
  end
end