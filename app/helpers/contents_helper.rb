module ContentsHelper

  def content_status_column(record)
    if record.status
      t(:approved)
    else
      t(:pending)
    end
  end

  def content_status_form_column(record, options)
    options[:selected] = record.status if record.status
    options[:disabled] = 'disabled' if params[:mod]
    select :record, :status, [[t(:pending), false], [t(:approved), true]], options, options
  end

end
