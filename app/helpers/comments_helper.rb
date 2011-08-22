module CommentsHelper

  def comment_status_form_column(record, options)
    options[:selected] = record.status if record.status
    select :record, :status, [[t(:pending), false], [t(:approved), true]], options, options
  end
end
