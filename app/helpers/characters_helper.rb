module CharactersHelper

  def self.lightview_options
    {
        :class => 'lightview',
        :'data-lightview-type' => 'ajax',
        :'data-lightview-options' => YAML::load_file("#{Rails.root}/config/lightview.yml").to_json.gsub(/^{|}$/, "").gsub(/\\|"/, "")
    }
  end

  def adventure_field
    @character.adventure.nil? ? '-' : @character.adventure.name
  end

  def character_race_options
    options_for_select Race.all.map{ |r| [r.name, r.id] }
  end

  def character_class_options
    options_for_select CharacterClass.all.map{ |r| [r.name, r.id] }
  end

end
