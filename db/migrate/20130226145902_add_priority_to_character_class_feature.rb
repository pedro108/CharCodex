class AddPriorityToCharacterClassFeature < ActiveRecord::Migration
  def change
    add_column :character_class_features, :priority, :integer
  end
end
