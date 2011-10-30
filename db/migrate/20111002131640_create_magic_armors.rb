class CreateMagicArmors < ActiveRecord::Migration
  def self.up
    create_table :magic_armors do |t|
      t.string :name, :null => false
      t.text :description, :null => true
      t.references :armor, :null => false
      t.text :construction, :null => false
    end
  end

  def self.down
    drop_table :magic_armors
  end
end
