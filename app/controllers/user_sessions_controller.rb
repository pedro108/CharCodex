class UserSessionsController < ApplicationController
  def index
    redirect_to :action => 'new'
  end

  def new
    if current_user
      redirect_to root_path
    else
      @user_session = UserSession.new
    end
  end

  def create
    @user_session = UserSession.new(:login => params[:user_session][:login], :password => params[:user_session][:password])
    unless @user_session.save
      flash[:error] = t(:invalid_login)
      false
    end
      redirect_to root_path
  end

  def destroy
    current_user_session.destroy if current_user_session
    redirect_to root_path
  end
end
