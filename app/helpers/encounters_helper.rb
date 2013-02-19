module EncountersHelper

  def encounter_terrains
    Terrain.where(:is_object => false)
  end

  def encounter_objects
    Terrain.where(:is_object => true)
  end

  def encounter_monsters
    Monster.all
  end

  self.instance_methods.each do |instance_method|
    define_method "#{instance_method.to_s.singularize}_options" do
      encounter_options_collection(send(instance_method))
    end
  end

  private

  def encounter_options_collection(options)
    options_for_select((options.collect{|t| [t.name,t.id]}).unshift(%W(#{t(:erase)} 0)))
  end
end
