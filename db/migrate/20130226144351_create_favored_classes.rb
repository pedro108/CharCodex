class CreateFavoredClasses < ActiveRecord::Migration
  def change
    create_table :favored_classes do |t|
      t.belongs_to :character
      t.belongs_to :character_class
    end
    add_index :favored_classes, :character_id
    add_index :favored_classes, :character_class_id
  end
end
