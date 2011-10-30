class CreateArmors < ActiveRecord::Migration
  def self.up
    create_table :armors do |t|
      t.string :name, :null => false
      t.text :description, :null => true
      t.double :price, :null => false
      t.integer :armor_bonus, :null => false
      t.integer :max_dex_bonus, :null => false
      t.integer :check_penalty, :null => false
      t.double :spell_failure, :null => false
      t.double :weight, :null => false
      t.references :armor_type, :null => true
    end
  end

  def self.down
    drop_table :armors
  end
end
