class CreateMagicWeapons < ActiveRecord::Migration
  def self.up
    create_table :magic_weapons do |t|
      t.string :name, :null => false
      t.text :description, :null => true
      t.references :weapon, :null => false
      t.text :construction, :null => false
    end
  end

  def self.down
    drop_table :magic_weapons
  end
end
