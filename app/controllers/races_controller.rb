class RacesController < ApplicationController
  before_filter do |controller|
    controller.restrict_access(0)
  end

  active_scaffold :race do |config|
    config.list.columns = [:name, :size]
    config.create.columns = [:name, :description, :race_attributes, :arbitrary_attributes, :size, :languages]
    config.update.columns = [:name, :description, :race_attributes, :arbitrary_attributes, :size, :languages]
    config.show.columns = [:name, :description, :race_attributes, :arbitrary_attributes,  :feats, :size, :languages,]

    config.nested.add_link :feats, :label => config.columns[:feats].label
    config.columns[:feats].association.reverse = :races

    config.columns[:languages].form_ui = :select
    config.columns[:arbitrary_attributes].form_ui = :number
    config.columns[:description].form_ui = :text_editor

    config.columns[:size].form_ui = :select
  end
end 