class CreateAlignmentsCharacterClasses < ActiveRecord::Migration
  def change
    create_table :alignments_character_classes, :id => false do |t|
      t.integer :alignment_id, :null => false
      t.integer :character_class_id, :null => false
    end

    add_index :alignments_character_classes, :character_class_id
  end
end
