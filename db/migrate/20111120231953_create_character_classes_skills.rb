class CreateCharacterClassesSkills < ActiveRecord::Migration
  def self.up
    create_table :character_classes_skills, :id => false do |t|
      t.integer  :character_class_id, :null => false
      t.integer  :skill_id, :null => false
    end
  end

  def self.down
    drop_table :character_classes_skills
  end
end
