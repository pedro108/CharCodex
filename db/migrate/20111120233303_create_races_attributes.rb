class CreateRacesAttributes < ActiveRecord::Migration
  def self.up
    create_table :races_attributes, :id => false do |t|
      t.integer :race_id,      :null => false
      t.integer :attribute_id, :null => false

      t.integer :value,        :null => false
    end
  end

  def self.down
    drop_table :races_attributes
  end
end
