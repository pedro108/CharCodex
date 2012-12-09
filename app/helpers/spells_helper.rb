module SpellsHelper
  def options_for_association_conditions(association)
    if association.name == :sub_spell_school
      { 'spell_schools.spell_school_id' => @record.spell_school_id }
    else
      super
    end
  end

  def spell_spell_school_show_column(record)
    val = "#{record.spell_school.name}"
    val << " (#{record.sub_spell_school.name})" unless record.sub_spell_school.nil?
    val << " [#{record.spell_descriptors.map{|sd| sd.name}.join ","}]" unless record.spell_descriptors.empty?
  end

  def spell_spell_resistance_column(record)
    record.spell_resistance? ? t('active_scaffold.true') : t('active_scaffold.false')
  end

end
