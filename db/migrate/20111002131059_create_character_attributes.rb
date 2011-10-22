class CreateCharacterAttributes < ActiveRecord::Migration
  def self.up
    create_table :character_attributes do |t|
      t.integer :quantity, :null => false
      t.references :character, :null => false
      t.references :attribute, :null => false
    end
  end

  def self.down
    drop_table :character_attributes
  end
end
