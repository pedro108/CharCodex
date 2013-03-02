class AddAttributesSelectedToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :attributes_selected, :boolean, :default => false
  end
end
