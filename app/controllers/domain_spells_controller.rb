class DomainSpellsController < ApplicationController
  before_filter do |controller|
    controller.restrict_access(0)
  end

  active_scaffold :domain_spell do |config|
    config.columns[:spell].form_ui = :select
    config.columns[:domain].form_ui = :select

  end
end
