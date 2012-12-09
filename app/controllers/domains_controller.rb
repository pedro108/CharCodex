class DomainsController < ApplicationController
  before_filter do |controller|
    controller.restrict_access(0)
  end

  active_scaffold :domain do |config|
    config.actions.exclude :nested
    config.columns = [:name, :bonus, :granted_powers, :domain]
    config.list.columns = [:name]

    config.columns[:domain].form_ui = :select
    config.columns[:bonus].form_ui = :text_editor

  end
end
