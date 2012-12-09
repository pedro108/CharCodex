class RenameDailySpellClassField < ActiveRecord::Migration
  def self.up
    rename_column :daily_spells, :class_id, :character_class_id
  end

  def self.down
    rename_column :daily_spells, :character_class_id, :class_id
  end
end
