class CommentsController < ApplicationController
  before_filter do |controller|
    controller.restrict_access(1)
  end
  
  active_scaffold :comment do |config|
    config.actions.exclude :create
  end

  def comment_list
  end

  protected

  def before_create_save(record)
    record.user = current_user
  end
end
