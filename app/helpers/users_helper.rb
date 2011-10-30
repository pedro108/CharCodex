module UsersHelper

  def user_type_column(record)
    types = {0 => t(:admin), 1 => t(:moderator), 2 => t(:master), 3 => t(:player)}
    return types[record.user_type]
  end

  def user_type_form_column(record, options)
    options[:selected] = record.user_type if record.user_type
    select :record, :user_type, [[t(:admin), 0], [t(:moderator), 1], [t(:master), 2], [t(:player), 3]], options, options
  end

end
