class ApplicationController < ActionController::Base
  before_filter :set_locale
  helper :all
  protect_from_forgery
  helper_method :current_user_session, :current_user, :access?

  def restrict_access(level)
    restricted unless access?(level)
  end

  private

  def set_locale
    I18n.locale = params[:locale]
  end

  def default_url_options(options={})
    logger.debug "default_url_options is passed options: #{options.inspect}\n"
    return { :locale => I18n.locale }
  end

  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end

  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.user
  end

  def require_login
    unless current_user
      flash[:error] =t(:login_required)
      redirect_to root_path
      false
    end
  end

  def restrict_admin
    restricted unless params[:mod] || access?(0)
  end

  def access?(level)
    return true if current_user && current_user.type_id <= level
    false
  end 

  def restricted
    flash[:error] = t(:restricted_access)
    redirect_to root_path
    false
  end
end
