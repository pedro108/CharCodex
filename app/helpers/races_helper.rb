module RacesHelper

  def race_attributes_show_column(record)
    content_tag :ul do
      record.race_attributes.each do |race_attribute|
        concat content_tag :li, "#{h(race_attribute.value)} #{h(race_attribute.attribute.name)}"
      end
    end
  end

  def arbitrary_attributes_show_column(record)
    if record.arbitrary_attributes > 0
      t(:arbitrary_attributes_show_description,
        :name => pluralize(2, record.name),
        :number => record.arbitrary_attributes)
    else
      t(:none)
    end
  end

  def race_race_traits_show_column(record)
    content_tag :ul do
      record.race_traits.each do |race_trait|
        concat content_tag :li, "<b>#{h(race_trait.name)}:</b> #{h(race_trait.benefits)}".html_safe
      end
    end
  end
end