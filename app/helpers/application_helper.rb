# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  # html escape to description fields
  def description_show_column(record)
    h(record.description.html_safe) unless record.description.nil?
  end

  def spell_level_form_column(record, options)
    levels = []
    10.times { |n| levels << [n, n] }

    select :record, :spell_level, levels, options.merge(:selected => record.spell_level)
  end

  def price_type_form_column(record, options)
    options[:selected] = record.price_type_id.nil? ? PriceType.default_type.id : record.price_type_id
    select :record, :price_type, PriceType.all(:order => :priority).map{|pt| [pt.name, pt.id]}, options
  end

  def price_column(record)
    h("#{record.price} #{record.price_type.name}") unless record.price.nil?
  end

  def weight_column(record)
    h("#{record.weight} #{t(:pounds)}")
  end

  def boolean_column(value)
    value ? t('active_scaffold.true') : t('active_scaffold.false')
  end


  # ActiveScaffold override
  def options_for_association_conditions(association)
    if association.active_record.eql? Race and association.class_name.eql? "Feat"
      "feat_type_id = #{FeatType.racial_trait.id}"
    else
      # Call default method for unspecified associations
      Class.new.extend(ActiveScaffold::Helpers::AssociationHelpers).options_for_association_conditions(association)
    end
  end

end
