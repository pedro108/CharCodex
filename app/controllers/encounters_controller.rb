class EncountersController < ApplicationController
  before_filter do |controller|
    controller.restrict_access(2)
  end

	active_scaffold :encounter do |config|
    battle_grid_html_options = { :onclick => "event.preventDefault();window.open(this.href,'','width=1024,height=768,status=no,menubar=no,location=no,toolbar=no')"}

		config.action_links.add :battle_grid_create,
                            :label => 'Cadastrar',
                            :page => true,
                            :type => :collection,
                            :html_options => battle_grid_html_options

    config.action_links.add :battle_grid_update,
                            :label => 'Editar',
                            :page => true,
                            :type => :member,
                            :html_options => battle_grid_html_options

    config.actions.exclude :show, :create, :update
    config.list.columns = [:name]
    config.columns[:name].set_link(config.action_links[:battle_grid_update])
  end

	def battle_grid_create
    battle_grid
    if params[:response]
      @encounter = Encounter.new({:adventure_id => params[:encounter][:adventure_id],
                                  :name => params[:encounter][:name],
                                  :grid => params[:encounter][:grid]})
      params[:response] = @encounter.save
    end
    render :layout => "battle_grid"
	end

  def battle_grid_update
    battle_grid
    @encounter = Encounter.find(params[:id])
    if params[:response]
      @encounter.name = params[:encounter][:name]
      @encounter.grid = params[:encounter][:grid]
      params[:response] = @encounter.save
    end
    render :layout => "battle_grid"
  end

  protected

    def battle_grid
      @terrains = Terrain.where(:is_object => false)
      @objects = Terrain.where(:is_object => true)
      @monsters = Monster.all
      params[:response] = params.has_key? :encounter
    end

    def conditions_for_collection
      ['encounters.adventure_id = ?', params[:adventure_id]]
    end
end
