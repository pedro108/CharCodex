class RenameTraitRaceTraits < ActiveRecord::Migration
  def self.up
    rename_column :race_traits, :trait_id, :feat_id
  end

  def self.down
    rename_column :race_traits, :feat_id, :trait_id
  end
end
