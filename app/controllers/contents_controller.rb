class ContentsController < ApplicationController
  before_filter :restrict_admin, :except => :blog
  before_filter :except => :blog do |controller|
    controller.restrict_access(1)
  end

  active_scaffold :content do |config|
     config.list.columns = [:content_locales, :status, :user]
     config.create.columns = [:content_locales, :status]
     config.update.columns = [:content_locales, :status]
    
     config.columns[:status].form_ui = :select

     config.columns[:content_locales].associated_limit = 1
     config.columns[:content_locales].clear_link
     config.columns[:user].clear_link
  end

  def blog
    params[:locale] = I18n.default_locale unless params[:locale]

    @content_locales = ContentLocale.where(:locale => params[:locale]).joins(:content).where('contents.status = 1')
  end

  protected

  def before_create_save(record)
    record.user = current_user
  end
end
