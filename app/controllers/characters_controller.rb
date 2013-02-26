class CharactersController < ApplicationController
  before_filter do |controller|
    controller.restrict_access(3)
  end

  def new
    @character = Character.new

    respond_to do |format|
      format.html { render 'race_select', :layout => 'blank' }
    end
  end

  def edit
    @character = Character.find(params[:id])
    view = @character.character_character_classes.empty? ? 'class_select' : 'sheet'

    respond_to do |format|
      format.html { render view, :layout => 'blank' }
    end
  end

  # Creates a character after the race has been selected.
  def create
    @character = Character.new(params[:character])
    @character.user_id = current_user.id
    params[:success] = @character.save

    respond_to do |format|
      format.js
    end
  end

  def update
    @character = Character.find(params[:id])
    params[:success] = @character.update_attributes(params[:character])

    respond_to do |format|
      format.js
    end
  end

	active_scaffold :character do |config|
    config.actions.exclude :show, :create, :update
    config.list.columns = [:name, :race, :level, :adventure]
    config.search.columns = [:name]

    config.columns[:adventure].clear_link
    config.columns[:race].clear_link

    config.action_links.add :new, :label => I18n.t('active_scaffold.create_new'), :page => true, :type => :collection,
                            :html_options => CharactersHelper::lightview_options

    config.action_links.add :edit, :label => I18n.t('active_scaffold.edit'), :page => true, :type => :member,
                            :html_options => CharactersHelper::lightview_options
  end

  protected

  def conditions_for_collection
    ['characters.user_id = ?', current_user.id]
  end
end
