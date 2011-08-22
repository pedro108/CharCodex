class CharactersController < ApplicationController
  before_filter do |controller|
    controller.restrict_access(3)
  end

	active_scaffold :character do |config|
    config.actions.exclude :show

    config.create.columns = [:name, :level, :photo, :miniature]
    config.update.columns = [:name, :level, :photo, :miniature]
    config.list.columns = [:photo, :name, :adventure]

    config.columns[:adventure].clear_link
    config.columns[:photo].form_ui = :paperclip
    config.columns[:miniature].form_ui = :paperclip
  end

  def conditions_for_collection
    ['characters.user_id = ?', current_user.id]
  end

  def before_create_save(record)
    record.user = current_user
  end
end
