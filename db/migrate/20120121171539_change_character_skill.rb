class ChangeCharacterSkill < ActiveRecord::Migration
  def self.up
    add_column :character_skills, :subskill, :string, :null => true
    add_column :skills, :have_subskill, :boolean, :null => false, :default => false
  end

  def self.down
    remove_column :character_skills, :subskill
    remove_column :skills, :have_subskill
  end
end
