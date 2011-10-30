class CreateArmorTypes < ActiveRecord::Migration
  def self.up
    create_table :armor_types do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :armor_types
  end
end
