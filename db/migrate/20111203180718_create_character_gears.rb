class CreateCharacterGears < ActiveRecord::Migration
  def self.up
    create_table :character_gears do |t|
      t.integer :character_id, :null => false
      t.integer :gear_id, :null => false
    end
  end

  def self.down
    drop_table :character_gears
  end
end
