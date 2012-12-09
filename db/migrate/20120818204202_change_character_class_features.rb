class ChangeCharacterClassFeatures < ActiveRecord::Migration
  def self.up
    remove_column :character_class_features, :feat_id
    add_column :character_class_features, :name, :string
    add_column :character_class_features, :description, :text
    add_column :character_class_features, :bonus, :text

  end

  def self.down
    add_column :character_class_features, :feat_id, :integer
    remove_column :character_class_features, :name
    remove_column :character_class_features, :description
    remove_column :character_class_features, :bonus
  end
end
