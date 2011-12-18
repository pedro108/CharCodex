class CreateArmors < ActiveRecord::Migration
  def self.up
    create_table :armors do |t|
      t.string :name, :null => false
      t.text :description, :null => true
      t.float :price, :null => false
      t.integer :armor_bonus, :null => false
      t.integer :max_dex_bonus, :null => false
      t.integer :check_penalty, :null => false
      t.float :spell_failure, :null => false
      t.float :weight, :null => false
      t.references :armor_type, :null => true
    end
  end

  def self.down
    drop_table :armors
  end
end
