class AdventuresController < ApplicationController
  before_filter do |controller|
    controller.restrict_access(2)
  end

	active_scaffold :adventure do |config|
    config.action_links.add :adventure_encounters, :label => 'Encontros' , :page => true, 
														:type => :member

    config.actions.exclude :show

    config.columns = [:name]
    config.list.columns = [:name]

    config.columns[:name].set_link(config.action_links[:adventure_encounters])
  end

  def adventure_encounters
    redirect_to encounters_path(:locale => params[:locale], :id => params[:id])
  end

  def conditions_for_collection
    ['adventures.user_id = ?', current_user.id]
  end

  def before_create_save(record)
    record.user = current_user
  end
end
