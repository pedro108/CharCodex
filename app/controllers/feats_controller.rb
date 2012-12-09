class FeatsController < ApplicationController
  before_filter do |controller|
    controller.restrict_access(0)
    controller.nested_configuration
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

  def nested_configuration
    # Racial traits
    if params[:eid] and params[:eid].match /^races/
      active_scaffold_config.action_links.delete :show_search

      active_scaffold_config.list.columns.exclude :feat_type
      active_scaffold_config.show.columns.exclude :feat_type

      if [:new, :edit].include? params[:action].to_sym
        active_scaffold_config.columns[:feat_type].form_ui = :hidden
        active_scaffold_config.columns[:feat_type].options = {:value => FeatType.racial_trait.id}
      end
    end
  end
end