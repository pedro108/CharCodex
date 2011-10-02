class CreateLevels < ActiveRecord::Migration
  def self.up
    create_table :levels do |t|
      t.integer :level
      t.integer :fastXP
      t.integer :mediumXP
      t.integer :slowXP
    end
  end

  def self.down
    drop_table :levels
  end
end
