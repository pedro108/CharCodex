class DomainsController < ApplicationController
  before_filter do |controller|
    controller.restrict_access(0)
  end

  active_scaffold :domain do |config|
    form_columns = [:name, :description, :domain, :first_level_spell, :second_level_spell,
                    :third_level_spell, :fourth_level_spell, :fifth_level_spell, :sixth_level_spell,
                    :seventh_level_spell, :eighth_level_spell, :ninth_level_spell]

    config.create.columns = form_columns
    config.update.columns = form_columns
    config.show.columns = [:name, :domain, :description, :domain_powers]
    config.list.columns = [:name, :description]

    config.list.sorting = {:name => 'ASC'}

    config.columns[:domain].form_ui = :select
    config.columns[:first_level_spell].form_ui = :select
    config.columns[:second_level_spell].form_ui = :select
    config.columns[:third_level_spell].form_ui = :select
    config.columns[:fourth_level_spell].form_ui = :select
    config.columns[:fifth_level_spell].form_ui = :select
    config.columns[:sixth_level_spell].form_ui = :select
    config.columns[:seventh_level_spell].form_ui = :select
    config.columns[:eighth_level_spell].form_ui = :select
    config.columns[:ninth_level_spell].form_ui = :select

    config.nested.add_link :domain_powers, :label => config.columns[:domain_powers].label
  end
end
