class RacesController < ApplicationController
  before_filter do |controller|
    controller.restrict_access(0)
  end

  active_scaffold :race do |config|
    config.list.columns = [:photo, :name, :size]
    config.create.columns = [:name, :photo, :description, :race_attributes, :arbitrary_attributes, :attribute_description, :size, :languages]
    config.update.columns = [:name, :photo, :description, :race_attributes, :arbitrary_attributes, :attribute_description, :size, :languages]
    config.show.columns = [:name, :photo, :description, :race_attributes, :arbitrary_attributes, :attribute_description, :race_traits, :size, :languages]

    config.nested.add_link :race_traits, :label => config.columns[:race_traits].label
    config.columns[:race_traits].association.reverse = :race

    config.columns[:languages].form_ui = :select
    config.columns[:arbitrary_attributes].form_ui = :number
    config.columns[:description].form_ui = :text_editor

    config.columns[:size].form_ui = :select
  end

  def sheet_details
    @race = Race.find(params[:id])

    respond_to do |format|
      format.html { render :layout => 'blank' }
    end
  end
end 