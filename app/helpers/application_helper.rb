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

  def weight_column(record)
    h("#{record.weight} #{t(:pounds)}")
  end

  def boolean_column(value)
    value ? t('active_scaffold.true') : t('active_scaffold.false')
  end

  # Price input override
  def price_form_column(record, options)
    options[:class] += ' text-input'
    options[:selected] = record.price_type_id.nil? ? PriceType.default_type.id : record.price_type_id

    concat text_field :record, :price, options
    select :record, :price_type, PriceType.all(:order => :priority).map{|pt| [pt.name, pt.id]}, options
  end

  def price_type_form_column(record, options)
  end

  # Price column display override
  def price_column(record)
    h("#{record.price} #{record.price_type.name}") unless record.price.nil? or record.price_type.nil?
  end

  def photo_column(record)
    if record.photo.exists?
      link_to record.photo.url, :target => "blank" do
        image_tag(h(record.photo.url(:thumb)), :border => 0)
      end
    else
      '-'
    end
  end

  def photo_show_column(record)
    if record.photo.exists?
      image_tag h(record.photo.url(:medium))
    else
      '-'
    end
  end

  # text_edit activescaffold override
  def active_scaffold_input_text_editor(column, options)
    options[:class] = "#{options[:class]} tinymce #{column.options[:class]}".strip

    html = []
    html << send(override_input(:textarea), column, options)
    html << tinymce
    html.join "\n"
  end

end
