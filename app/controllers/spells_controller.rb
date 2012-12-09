class SpellsController < ApplicationController
  before_filter do |controller|
    controller.restrict_access(0)
  end

  active_scaffold :spell do |config|
    form_columns = [:name, :description, :casting_time, :component, :range, :duration, :area,
                    :effect, :target, :saving_throw, :spell_resistance, :spell_school, :sub_spell_school,
                    :spell_descriptors]

    config.list.columns = [:name, :spell_school, :sub_spell_school, :spell_descriptors]
    config.create.columns = form_columns
    config.update.columns = form_columns

    config.show.columns = [:name, :spell_school, :casting_time, :component, :range, :area, :effect, :target,
                           :duration, :saving_throw, :spell_resistance, :description]


    config.columns[:level].form_ui = :number
    config.columns[:spell_descriptors].form_ui = :select
    config.columns[:spell_resistance].form_ui = :boolean
    config.columns[:description].form_ui = :text_editor
    config.columns[:spell_school].form_ui = :select
    config.columns[:sub_spell_school].form_ui = :select

    config.columns[:spell_descriptors].clear_link

    config.columns[:spell_school].actions_for_association_links = [:show]
    config.columns[:sub_spell_school].actions_for_association_links = [:show]

    config.columns[:spell_school].update_columns = [:sub_spell_school]

    config.nested.add_link :character_class_spells, :label => config.columns[:character_class_spells].label
  end
end
