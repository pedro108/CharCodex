class CreateClassFeatures < ActiveRecord::Migration
  def self.up
    create_table :character_class_features do |t|
      t.integer :character_class_id
      t.integer :feat_id
      t.integer :required_level
    end
  end

  def self.down
    drop_table :character_class_features
  end
end
