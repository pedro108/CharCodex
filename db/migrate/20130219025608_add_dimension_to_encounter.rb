class AddDimensionToEncounter < ActiveRecord::Migration
  def change
    add_column :encounters, :dimension, :integer
  end
end
