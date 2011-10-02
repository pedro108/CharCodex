module UsersHelper

  def type_id_column(record)
    types = {1 => t(:difficult), 2 => t(:impassable)}
    return types[record.type_id]
  end
  
end
