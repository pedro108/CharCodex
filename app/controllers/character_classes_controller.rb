class CharacterClassesController < ApplicationController
  before_filter do |controller|
    controller.restrict_access(0)
  end

  active_scaffold :character_class do |config|
    config.columns = [:name, :description, :hit_dice, :base_multiplier, :fortitude, :reflex, :will, :spellcaster,
                      :skills, :skill_ranks]

    config.list.columns = [:name, :hit_dice, :base_multiplier, :spellcaster]
    config.show.columns = [:name, :description, :hit_dice, :base_multiplier, :fortitude, :reflex, :will, :spellcaster,
                           :skills, :skill_ranks, :character_class_features]

    config.columns[:skills].form_ui = :select
    config.columns[:description].form_ui = :text_editor
    config.columns[:hit_dice].form_ui = :select

    config.nested.add_link :character_class_features, :label => config.columns[:character_class_features].label
  end
end 