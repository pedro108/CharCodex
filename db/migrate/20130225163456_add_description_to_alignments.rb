class AddDescriptionToAlignments < ActiveRecord::Migration
  def change
    add_column :alignments, :description, :text
  end
end
