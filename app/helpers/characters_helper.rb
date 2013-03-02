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

  def character_race_options(selected)
    options_for_select Race.all.map{ |r| [r.name, r.id] }, selected
  end

  def character_class_options(selected)
    options_for_select CharacterClass.all.map{ |r| [r.name, r.id] }, selected
  end

  def favored_class_bonus_options
    options_for_select FavoredClassBonus.all.map{ |r| [r.benefit, r.id] }
  end

  def fantasy_type_options
    options_for_select [['Low Fantasy (10)', 10], ['Standard Fantasy (15)', 15],
                        ['High Fantasy (20)', 20], ['Epic Fantasy (25)', 25], [t(:random), -1]], 15
  end

  def attributes_array
    [:strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma]
  end

  def attribute_options
    options_for_select(Array.new(6) do |i|
      attr = attributes_array[i]
      [t("activerecord.attributes.character.#{attr}"), attr.to_s]
    end)
  end

  def character_character_classes_column(record)
    record.character_character_classes.select('*, count(*) AS total_level').group(:character_class_id).map do |c|
      "#{c.character_class.name} #{c.total_level}"
    end.join(" / ")
  end

end
