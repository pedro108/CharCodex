class CreateCharacterLanguages < ActiveRecord::Migration
  def self.up
    create_table :character_languages do |t|
      t.integer :character_id, :null => false
      t.integer :language_id, :null => false
    end
  end

  def self.down
    drop_table :character_languages
  end
end
