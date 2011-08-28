module TerrainsHelper

  def miniature_column(record)
    image_tag(h(record.miniature))
  end

  def is_object_column(record)
    if(record.is_object)
      return t(:sim)
    else
      return t(:nao)
    end
  end

  def type_id_column(record)
    types = {0 => t(:normal), 1 => t(:difficult), 2 => t(:impassable)}
    return types[record.type_id]
  end

  def is_object_form_column(record, options)
    options[:selected] = record.is_object if record.is_object
    select :record, :is_object, [[t(:nao), 0], [t(:sim), 1]], options, options
  end

  def type_id_form_column(record, options)
    options[:selected] = record.type_id if record.type_id
    select :record, :type_id, [[t(:normal), 0], [t(:difficult), 1], [t(:impassable), 2]], options, options
  end

#  def dimension_x_form_column(record, options)
#    return "#{text_field :record, :dimension_x, options} X #{text_field :record, :dimension_y, options}"
# end

end
