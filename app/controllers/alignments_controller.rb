class AlignmentsController < ApplicationController

	active_scaffold :alignment do |config|
    config.create.columns = [:name, :type_id]
	end
end
