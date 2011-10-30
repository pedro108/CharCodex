class CreateSkills < ActiveRecord::Migration
  def self.up
    create_table :skills do |t|
      t.string :name, :null => false
      t.text :description, :null => true
      t.references :attribute, :null => false
    end
  end

  def self.down
    drop_table :skills
  end
end
