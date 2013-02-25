class AlignmentsController < ApplicationController

	active_scaffold :alignment do |config|
    config.actions.exclude :create, :search, :delete

    config.columns = [:name, :description]
    config.list.columns.exclude :description

    config.columns[:name].options = { disabled: 'disabled' }
    config.columns[:description].form_ui = :text_editor
	end
end
