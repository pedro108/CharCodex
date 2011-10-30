class CreateLevels < ActiveRecord::Migration
  def self.up
    create_table :levels do |t|
      t.integer :level, :null => false
      t.integer :fastXP, :null => false
      t.integer :mediumXP, :null => false
      t.integer :slowXP, :null => false
      t.integer :badSavingThrow, :null => false
      t.integer :goodSavingThrow, :null => false
    end
  end

  def self.down
    drop_table :levels
  end
end
