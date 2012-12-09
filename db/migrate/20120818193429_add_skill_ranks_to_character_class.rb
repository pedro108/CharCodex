class AddSkillRanksToCharacterClass < ActiveRecord::Migration
  def self.up
    add_column :character_classes, :skill_ranks, :integer
  end

  def self.down
    remove_column :character_classes, :skill_ranks
  end
end
