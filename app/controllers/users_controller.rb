class UsersController < ApplicationController
  before_filter :except => :signup do |controller|
    controller.restrict_access(0)
  end

  active_scaffold :user do |config|
    config.columns = [:login, :password, :password_confirmation, :name, :email, :type_id]
    config.columns[:password].form_ui = :password
    config.columns[:password_confirmation].form_ui = :password
    config.columns[:type_id].form_ui = :select
    config.columns[:type_id].options = {:options => [['Administrador', 0], ['Moderador', 1], 
                                                     ['Mestre', 2], ['Jogador', 3] ]}
    config.list.sorting = {:name => :asc }
    config.list.columns.exclude :password, :password_confirmation, :type_id
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
