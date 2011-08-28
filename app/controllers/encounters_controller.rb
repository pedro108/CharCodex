class EncountersController < ApplicationController
  before_filter do |controller|
    controller.restrict_access(2)
  end

	active_scaffold :encounter do |config|
		config.action_links.add :battle_grid_create, :label => 'Cadastrar' , :page => true, :type => :collection,
                            :html_options => { :onclick => "event.preventDefault();window.open(this.href,'','width=1024,height=768,status=no,menubar=no,location=no,toolbar=no')"}

    config.actions.exclude :show, :create
    config.list.columns = [:name]
  end

	def battle_grid_create
    @terrains = Terrain.where(:is_object => false)
    @objects = Terrain.where(:is_object => true)
    @monsters = Monster.all
		render :layout => "battle_grid"
	end

  def conditions_for_collection
    ['encounters.adventure_id = ?', params[:id]]
  end

  def before_create_save(record)
    record.adventure_id = params[:id]
  end
end
