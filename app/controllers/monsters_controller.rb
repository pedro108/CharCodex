class MonstersController < ApplicationController
  before_filter do |controller|
    controller.restrict_access(2)
  end

  active_scaffold :monster do |config|
    config.actions.exclude :show

    config.create.columns = [:name, :dimension, :photo, :miniature]
    config.update.columns = [:name, :dimension, :photo, :miniature]
    config.list.columns = [:photo, :name, :dimension]

    config.columns[:photo].form_ui = :paperclip
    config.columns[:miniature].form_ui = :paperclip

    config.columns[:dimension].form_ui = :select
  end

  def before_create_save(record)
    record.user = current_user
  end
end
