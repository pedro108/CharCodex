class AddExtraFeaturesToCharacterClass < ActiveRecord::Migration
  def change
    add_column :character_classes, :extra_features, :text
  end
end
