class AddLevelsToClassFeatures < ActiveRecord::Migration
  def change
    remove_column :character_class_features, :required_level
    add_column :character_class_features, :levels, :string
  end
end
