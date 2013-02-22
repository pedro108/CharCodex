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
      "#{skill.name} <b>(#{skill.attribute.abbr})</b>"
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
end