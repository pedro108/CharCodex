module CharacterClassesHelper
  def save_form_column(column, options)
    select :record, column, [[t(:good), true], [t(:bad), false]], options
  end

  def save_column(good_save)
    good_save ? t(:good) : t(:bad)
  end

  def character_class_base_multiplier_form_column(record, options)
    select :record, :base_multiplier, [["x1/2", 0.50], ["x3/4", 0.75], ["x1", 1.0]], options
  end

  def character_class_base_multiplier_column(record)
    case record.base_multiplier
      when 1.0 then "x1"
      when 0.75 then "x3/4"
      when 0.5 then "x1/2"
      else
    end
  end

  def character_class_will_form_column(record, options)
    save_form_column(:will, options)
  end

  def character_class_reflex_form_column(record, options)
    save_form_column(:reflex, options)
  end

  def character_class_fortitude_form_column(record, options)
    save_form_column(:fortitude, options)
  end

  def character_class_will_show_column(record)
    save_column(record.will)
  end

  def character_class_reflex_show_column(record)
    save_column(record.reflex)
  end

  def character_class_fortitude_show_column(record)
    save_column(record.fortitude)
  end

  def character_class_spellcaster_column(record)
    boolean_column(record.spellcaster)
  end

  def character_class_skill_ranks_show_column(record)
    "#{h(record.skill_ranks)} + #{t(:int_modifier)}"
  end

  def character_class_skills_column(record)
    skills = record.skills.map do |skill|
      "#{skill.name} (#{skill.attribute.abbr})"
    end

    skills.join(", ").html_safe
  end

  def character_class_spellcaster_type_id_form_column(record, options)
    collection = I18n.t('spellcaster_type').map do |id, type|
      [type, id]
    end

    options[:include_blank] = ''
    select :record, :spellcaster_type_id, collection, options
  end

  def base_attack_bonus(selected_class, level)
    full_bba = (selected_class.base_multiplier * level).floor
    attacks = full_bba.eql?(0) ? 1 : (full_bba.to_f / 5.0).ceil

    Array.new attacks do |i|
      "+#{full_bba - i*5}"
    end.join("/")
  end

  def saving_throw_bonus(selected_class, save, level_obj)
    "+#{level_obj.send("#{selected_class.send("#{save}?") ? 'good' : 'bad' }_saving_throw")}"
  end

  def level_class_features(selected_class, level)
    features = Array.new
    selected_class.character_class_features.each do |c_f|
      feature_levels = c_f.levels.nil? ? [] : c_f.levels.split(',')
      features << link_to(c_f.name, "##{c_f.name.downcase.gsub(/\s/, '_')}_field")  if feature_levels.include?(level.to_s)
    end

    features.join(', ').html_safe
  end
end