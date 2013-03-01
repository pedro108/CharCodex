class AddAttributeDescriptionToRaces < ActiveRecord::Migration
  def change
    add_column :races, :attribute_description, :string
  end
end
