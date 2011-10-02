class UsersController < ApplicationController

  helper 'users'

  before_filter :except => :signup do |controller|
    controller.restrict_access(0)
  end

  active_scaffold :user do |config|
    config.columns = [:login, :password, :password_confirmation, :name, :email, :user_type]
    config.columns[:password].form_ui = :password
    config.columns[:password_confirmation].form_ui = :password
    config.columns[:user_type].form_ui = :select

    config.list.sorting = {:name => :asc }
    config.list.columns.exclude :password, :password_confirmation
    config.show.columns.exclude :password, :password_confirmation
  end

  def signup
    if params[:user]
      @newuser = User.new(params[:user])
      @newuser.save!
      flash[:error] = t(:register_success)
      redirect_to root_path
    end
  end

end
