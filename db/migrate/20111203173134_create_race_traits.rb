class CreateRaceTraits < ActiveRecord::Migration
  def self.up
    create_table :race_traits do |t|
      t.integer :race_id, :null => false
      t.integer :trait_id, :null => false
    end
  end

  def self.down
    drop_table :race_traits
  end
end
