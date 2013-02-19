class EncountersController < ApplicationController
  before_filter do |controller|
    controller.restrict_access(2)
  end

	active_scaffold :encounter do |config|
    battle_grid_html_options = { :onclick => "event.preventDefault();window.open(this.href,'','width=1024,height=768,status=no,menubar=no,location=no,toolbar=no')"}

		config.action_links.add :battle_grid_new, :label => I18n.t('active_scaffold.create_new'), :page => true,
                            :type => :collection, :html_options => battle_grid_html_options

    config.action_links.add :battle_grid_edit, :label => I18n.t('active_scaffold.edit'), :page => true,
                            :type => :member, :html_options => battle_grid_html_options

    config.actions.exclude :show, :create, :update
    config.list.columns = [:name]
  end

	def battle_grid_new
    @encounter = Encounter.new
    params[:action] = '/encounters/battle_grid_create'

    respond_to do |format|
      format.html { render 'battle_grid', :layout => 'battle_grid' }
    end
  end

  def battle_grid_create
    @encounter = Encounter.new(params[:encounter])
    params[:success] = @encounter.save

    respond_to do |format|
      format.js { render 'battle_grid' }
    end
  end

  def battle_grid_edit
    params[:action] = "/encounters/#{params[:id]}/battle_grid_update"
    @encounter = Encounter.find(params[:id])

    respond_to do |format|
      format.html { render 'battle_grid', :layout => 'battle_grid' }
    end
  end

  def battle_grid_update
    @encounter = Encounter.find(params[:id])
    params[:success] = @encounter.update_attributes(params[:encounter])

    respond_to do |format|
      format.js { render 'battle_grid' }
    end
  end

  protected

  def conditions_for_collection
    ['encounters.adventure_id = ?', params[:adventure_id]]
  end
end
