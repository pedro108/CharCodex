class CharactersController < ApplicationController
  before_filter do |controller|
    controller.restrict_access(3)
  end

  before_filter :create_if_new, :only => [:update]

  def new
    @character = Character.new

    respond_to do |format|
      format.html { render 'sheet', :layout => 'blank' }
    end
  end

  def edit
    @character = Character.find(params[:id])

    respond_to do |format|
      format.html { render 'sheet', :layout => 'blank' }
    end
  end

  def update
    params[:success] = @character.update_attributes(params[:character])

    respond_to do |format|
      format.js
    end
  end

	active_scaffold :character do |config|
    config.actions.exclude :show, :create, :update
    config.list.columns = [:name, :level, :adventure]
    config.search.columns = [:name]

    config.columns[:adventure].clear_link

    config.action_links.add :new, :label => I18n.t('active_scaffold.create_new'), :page => true, :type => :collection,
                            :html_options => CharactersHelper::lightview_options

    config.action_links.add :edit, :label => I18n.t('active_scaffold.edit'), :page => true, :type => :member,
                            :html_options => CharactersHelper::lightview_options
  end

  protected

  def conditions_for_collection
    ['characters.user_id = ?', current_user.id]
  end

  private

  def create_if_new
    if params[:id].nil?
      @character = Character.new
      @character.user_id = current_user.id
      @character.save!
    else
      @character = Character.find(params[:id])
    end
  end
end
