class CharacterClassesController < ApplicationController
  before_filter do |controller|
    controller.restrict_access(0)
  end

  active_scaffold :character_class do |config|
    config.columns = [:name, :photo, :description, :hit_dice, :base_multiplier, :fortitude, :reflex, :will, :alignments,
                      :skills, :skill_ranks, :initial_gold, :extra_features, :spellcaster_type_id, :spontaneous_spellcaster, :spells_per_day]

    config.list.columns = [:photo, :name, :hit_dice, :base_multiplier]
    config.show.columns = [:name, :photo, :description, :hit_dice, :base_multiplier, :fortitude, :reflex, :will, :skills,
                           :skill_ranks, :initial_gold, :character_class_features, :extra_features, :spellcaster_type, :spontaneous_spellcaster]

    config.columns[:skills].form_ui = :select
    config.columns[:alignments].form_ui = :select
    config.columns[:description].form_ui = :text_editor
    config.columns[:extra_features].form_ui = :text_editor
    config.columns[:hit_dice].form_ui = :select
    config.columns[:spells_per_day].form_ui = :select

    config.columns[:spontaneous_spellcaster].css_class = 'spellcaster_field'
    config.columns[:spells_per_day].css_class = 'spellcaster_field'
    config.columns[:spells_per_day].label = I18n.t('activerecord.models.spell_per_day')

    config.nested.add_link :character_class_features, :label => config.columns[:character_class_features].label
  end

  def sheet_details
    @character_class = CharacterClass.find(params[:id])

    respond_to do |format|
      format.html { render :layout => 'blank' }
    end
  end

  def after_create_save(record)
    # Create the spell list table, if the class is a spellcaster
    unless record.spellcaster_type_id.nil?
      20.times do |class_level|
        class_level += 1
        spells_per_day_params = params[:record].delete(:"spell_list_#{class_level}")
        begin
          spells_per_day = SpellPerDay.new(spells_per_day_params)
          spells_per_day.character_class_id = record.id
          spells_per_day.save!
        rescue
          record.errors[:spells_per_day] << I18n.t('spell_level.error', :class_level => class_level)
        end
      end
    end
  end

  def before_update_save(record)
    # Update the spell list table, if the class is a spellcaster, remove the table, if not
    20.times do |class_level|
      class_level += 1
      spells_per_day_params = params[:record].delete(:"spell_list_#{class_level}")
      spells_per_day = SpellPerDay.where(:class_level => class_level, :character_class_id => record.id)
      begin
        if record.spellcaster_type_id.nil?
          spells_per_day.destroy_all unless spells_per_day.empty?
        elsif spells_per_day.empty?
          spells_per_day = SpellPerDay.new(spells_per_day_params)
          spells_per_day.save!
        else
          spells_per_day.first.update_attributes(spells_per_day_params)
        end
      rescue
        record.errors[:spells_per_day] << I18n.t('spell_level.error', :class_level => class_level)
      end
    end
  end
end 