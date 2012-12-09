class CreateRaceLanguages < ActiveRecord::Migration
  def self.up
    create_table :race_languages do |t|
      t.integer :race_id, :null => false
      t.integer :language_id, :null => false
    end
  end

  def self.down
    drop_table :race_languages
  end
end
