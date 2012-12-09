module DomainsHelper
  def domain_spell_form_input(column_name, options)
    column = active_scaffold_config.columns[column_name.to_sym]
    restriction_column = active_scaffold_config.columns["#{column_name}_restriction".to_sym]

    active_scaffold_input_select(column, options) +
    text_field(:record, restriction_column.name, {:maxlength => restriction_column.column.limit,
                                                  :class => "domain-spell-restriction-input text-input",
                                                  :placeholder => t(:restriction)})
  end

  def domain_first_level_spell_form_column(record, options)
    domain_spell_form_input(:first_level_spell, options)
  end

  def domain_second_level_spell_form_column(record, options)
    domain_spell_form_input(:second_level_spell, options)
  end

  def domain_third_level_spell_form_column(record, options)
    domain_spell_form_input(:third_level_spell, options)
  end

  def domain_fourth_level_spell_form_column(record, options)
    domain_spell_form_input(:fourth_level_spell, options)
  end

  def domain_fifth_level_spell_form_column(record, options)
    domain_spell_form_input(:fifth_level_spell, options)
  end

  def domain_sixth_level_spell_form_column(record, options)
    domain_spell_form_input(:sixth_level_spell, options)
  end

  def domain_seventh_level_spell_form_column(record, options)
    domain_spell_form_input(:seventh_level_spell, options)
  end

  def domain_eighth_level_spell_form_column(record, options)
    domain_spell_form_input(:eighth_level_spell, options)
  end

  def domain_ninth_level_spell_form_column(record, options)
    domain_spell_form_input(:ninth_level_spell, options)
  end
end
