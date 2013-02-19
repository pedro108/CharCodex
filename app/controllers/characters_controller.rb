class CharactersController < ApplicationController
  before_filter do |controller|
    controller.restrict_access(3)
  end

  def new
    @character = Character.new

    respond_to do |format|
      format.html { render 'sheet', :layout => 'blank' }
    end
  end

	active_scaffold :character do |config|
    config.actions.exclude :show, :create, :update
    config.list.columns = [:photo, :name, :level, :adventure]
    config.search.columns = [:name]

    config.columns[:adventure].clear_link

    config.action_links.add :new, :label => I18n.t('active_scaffold.create_new'), :page => true, :type => :collection,
                            :html_options => { class: 'lightview', :'data-lightview-type' => 'ajax',
                                               :'data-lightview-options' => "skin: 'mac'" }
  end

  protected

  def conditions_for_collection
    ['characters.user_id = ?', current_user.id]
  end

  def before_create_save(record)
    record.user = current_user
  end
end
